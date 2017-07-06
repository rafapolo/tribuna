use tse

-- load candidatos
load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';' enclosed by '"'
    lines terminated by '\r\n'
    ignore 1 lines
    (@seqcand, @uf, @partido, @cargo, @nome, @numero, @data,
    @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="candidato",
  uf = @uf, nome=@nome, cargo=@cargo, numero=@numero, cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));

-- load comites
load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Comitê/Receita/ReceitaComite.CSV'
  into table doacoes
    fields terminated by ';' enclosed by '"'
    lines terminated by '\r\n'
    ignore 1 lines
    (@uf, @partido, @nome, @data, @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="comite",
  uf = @uf,
  nome=@nome,
  cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
