use tse;

-- conserta datas
ALTER TABLE `tse`.`doacoes`
  ADD COLUMN `quando` DATE NULL AFTER `data`;
update doacoes set quando = STR_TO_DATE(`data`, '%d/%m/%Y') WHERE quando is null AND data REGEXP '^[0-9]{1,2}/\[0-9]{2}/\[0-9]{4}$';
update doacoes set quando = str_to_date(data, '%d-%b-%y') where quando is null AND data REGEXP '^[0-9]{1,2}-.{3}-[0-9]{2,4}$';
-- todo: 692 datas vieram cagadas. erro no CSV ou na limpeza?
-- SELECT data, count(*) FROM doacoes WHERE data is not null and data!='' and quando is ull group by data;
-- SELECT ano, count(*) FROM doacoes WHERE data is not null and data!='' and quando is null group by ano;

ALTER TABLE `tse`.`doacoes`
  DROP COLUMN `data`;

-- abstrai Candidatos
drop table candidatos;
CREATE TABLE candidatos
  select partido, uf, ano, nome, cargo, numero, cpf_candidato
    from doacoes
      where tipo="candidato"
      group by partido, uf, nome, cargo, numero, cpf_candidato, ano;

ALTER TABLE `tse`.`candidatos`
  ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
  ADD PRIMARY KEY (`id`);

-- abstrai Doadores
drop table doadores;
create table doadores
select doador, cpf
  from doacoes
    group by doador, cpf;

ALTER TABLE `tse`.`doadores`
  ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
  ADD PRIMARY KEY (`id`);

-- abstrai Comites
drop table comites;
create table comites
  SELECT nome, partido, uf
  FROM doacoes where tipo != 'candidato'
    group by nome, partido, uf;

ALTER TABLE `tse`.`comites`
  ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
  ADD PRIMARY KEY (`id`);

CREATE INDEX index_doador ON doadores ( doador, cpf );
CREATE INDEX index_doador ON doacoes ( doador, cpf );

-- aumenta limte de execução das queries para o grosso que há por vir
SET SESSION MAX_EXECUTION_TIME=20000000;

-- co-relaciona novas tabelas abstraídas com atual Doaçoes
ALTER TABLE `tse`.`doacoes`
  ADD COLUMN `candidato_id` INT(7) NULL AFTER `id`,
  ADD COLUMN `doador_id` INT(7) NULL AFTER `candidato_id`,
  ADD COLUMN `comite_id` INT(7) NULL AFTER `doador_id`;

CREATE INDEX index_candidato ON candidatos ( nome, cpf_candidato, numero, partido, ano, cargo );
CREATE INDEX index_candidato ON doacoes ( nome, cpf_candidato, numero, partido, ano, cargo );

update doacoes d, doadores dd
  set d.doador_id = dd.id
    where dd.doador = d.doador and d.cpf=dd.cpf;

update doacoes d, candidatos c
  set d.candidato_id = c.id
    where c.nome = d.nome and c.cpf_candidato=d.cpf_candidato
      and c.numero=d.numero and c.partido=d.partido
        and c.ano=d.ano and c.cargo=d.cargo;

update doacoes d, comites c
  set d.comite_id = c.id
    where d.partido = c.partido and d.nome=c.nome and c.uf=d.uf;

-- otimiza
ALTER TABLE `tse`.`doacoes`
  ADD INDEX `doacoes_ibfk_1_idx` (`candidato_id` ASC),
  ADD INDEX `doacoes_ibfk_2_idx` (`comite_id` ASC),
  ADD INDEX `doacoes_ibfk_3_idx` (`doador_id` ASC),
  ADD CONSTRAINT `doacoes_ibfk_1`
    FOREIGN KEY (`candidato_id`)
    REFERENCES `tse`.`candidatos` (`id`);

ALTER TABLE `tse`.`doacoes`
  ADD CONSTRAINT `doacoes_ibfk_2`
    FOREIGN KEY (`comite_id`)
    REFERENCES `tse`.`comites` (`id`);

ALTER TABLE `tse`.`doacoes`
  ADD CONSTRAINT `doacoes_ibfk_3`
    FOREIGN KEY (`doador_id`)
    REFERENCES `tse`.`doadores` (`id`);

-- remove o que foi abstraído
ALTER TABLE `tse`.`doacoes`
  DROP COLUMN `cpf_candidato`,
  DROP COLUMN `doador`,
  DROP COLUMN `cpf`,
  DROP COLUMN `numero`,
  DROP COLUMN `nome`,
  DROP COLUMN `cargo`,
  DROP COLUMN `partido`,
  DROP COLUMN `tipo`,
  DROP INDEX `index_candidato` ,
  DROP INDEX `index_doador` ;

-- indexa valor_total e doacoes_count
ALTER TABLE `tse`.`comites`
  ADD COLUMN `valor_total` DOUBLE(12,2) NULL;

  update comites c,
    (select comite_id, sum(valor) as soma from doacoes group by comite_id) as d
    set c.valor_total = d.soma
      where d.comite_id = c.id;

ALTER TABLE `tse`.`doadores`
  ADD COLUMN `valor_total` DOUBLE(12,2) NULL;

  update doadores dd,
    (select doador_id, sum(valor) as soma from doacoes group by doador_id) as d
    set dd.valor_total = d.soma
      where d.doador_id = dd.id;

ALTER TABLE `tse`.`candidatos`
  ADD COLUMN `valor_total` DOUBLE(12,2) NULL;

  update candidatos c,
    (select candidato_id, sum(valor) as soma from doacoes group by candidato_id) as d
    set c.valor_total = d.soma
      where d.candidato_id = c.id;

  update candidatos c,
    (select candidato_id, count(*) as qtd from doacoes group by candidato_id) as d
    set c.doacoes_count = d.qtd
      where d.candidato_id = c.id;

  update doadores d,
    (select doador_id, count(*) as qtd from doacoes group by doador_id) as c
    set d.doacoes_count = c.qtd
      where c.doador_id = d.id;

-- otimiza redondo e grita Gol!
OPTIMIZE TABLE doadores, candidatos, comites, doacoes;
