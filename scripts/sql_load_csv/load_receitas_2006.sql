use tse;

-- load candidatos
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@seq, @nome, @cargo, @cod_cargo, @numero, @uf, @cnpj_candidato, @num_partido, @partido, @valor, @data, @motivo, @u_e, @recurso, @cod_tipo, @doador, @cpf, @unidel, @sit)
SET
  ano="2006", tipo="candidato",
  uf = TRIM(@uf),
  candidato=TRIM(@nome),
  cargo=TRIM(@cargo),
  numero=TRIM(@numero),
  cpf_doador=TRIM(@cpf),
  doador=TRIM(@doador),
  partido=TRIM(@partido),
  recurso = TRIM(@recurso),
  motivo= TRIM(@motivo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;


-- load comites
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @pf, @valor, @data, @motivo,
      @titulo, @recurso, @tp_recurso, @doador, @cpf_doador, @no, @sit)

  SET
    ano="2006", tipo="comite",
    uf = TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    cpf=TRIM(@cpf_doador),
    recurso = TRIM(@recurso),
    motivo = TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
