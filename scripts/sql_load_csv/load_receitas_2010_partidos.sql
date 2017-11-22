USE tse;

-- load comites
# "Data e hora";"UF";"Tipo comite";"Sigla Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/AC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf), 
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/AL/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/AM/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/AP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/BA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/BR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    
    
    cpf_doador=TRIM(@cpf),
    
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/CE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/DF/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/ES/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/GO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/MA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/MG/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/MS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/MT/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/PA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/PB/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/PE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/PI/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/PR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/RJ/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/RN/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/RO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/RR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/RS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/SC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/SE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/SP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/comite/TO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cpf_doador=TRIM(@cpf),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;


-- load partidos
# "Data e hora";"UF";"Tipo partido";"Sigla Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"
LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/AC/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/AL/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/AM/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/AP/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/BA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/BR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/CE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/DF/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),

cpf_doador=TRIM(@cpf),

doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/ES/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/GO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/MA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/MG/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/MS/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/MT/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/PA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/PB/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/PE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/PI/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/PR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/RJ/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/RN/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/RO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/RR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/RS/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/SC/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/SE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/SP/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/partido/TO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @fonte, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf=TRIM(@uf),
candidato=TRIM(@nome),
cpf_doador=TRIM(@cpf),
doador=TRIM(@doador),
partido=TRIM(@partido),
recurso=TRIM(@recurso),
motivo=TRIM(@motivo),
data=LEFT(@data, 10),
valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;
