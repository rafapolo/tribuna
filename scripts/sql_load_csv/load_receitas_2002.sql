use tse

-- load candidatos
load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\r\n'
    ignore 1 lines
    (@seqcand, @uf, @partido, @cargo, @nome, @numero, @data,
      @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="candidato",
  uf =      TRIM(@uf),
  candidato =    TRIM(@nome),
  cargo =   TRIM(@cargo),
  numero =  TRIM(@numero),
  cpf_doador =  TRIM(@cpf_doador),
  doador =  TRIM(@doador),
  partido = TRIM(@partido),
  recurso = TRIM(@tipo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;

-- load comites
load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Comitê/Receita/ReceitaComite.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@uf, @partido, @nome, @data, @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="comite",
  uf =      TRIM(@uf),
  candidato =    TRIM(@nome),
  cpf_doador =     TRIM(@cpf_doador),
  doador =  TRIM(@doador),
  partido = TRIM(@partido),
  recurso = TRIM(@tipo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;
