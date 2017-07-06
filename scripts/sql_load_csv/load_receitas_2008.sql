use tse

-- load candidatos
load data local infile 'fontes_tse/2008/prestacao_contas_2008/2008/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@seq, @nome, @sexo, @cargo, @cd_cargo, @numero, @uf, @nmue, @seue, @tit_ele,
      @cpf_candidato, @pj_campanha, @num_part, @partido, @valor, @data, @motivo, @sg,
        @tipo, @cd_tp, @doador, @cpf, @uf_d, @n_uf, @adm, @sit)

  SET
    ano="2008", tipo="candidato",
    uf = TRIM(@uf),
    nome=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso = TRIM(@tipo),
    motivo=TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;


-- load comites
load data local infile 'fontes_tse/2008/prestacao_contas_2008/2008/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @cue, @nuf, @cnpj, @valor, @data, @motivo,
      @titulo, @tipo, @tp_recurso, @doador, @cpf_doador, @no, @sit, @c3, @c4, @c5, @c6)

  SET
    ano="2008", tipo="comite",
    uf = TRIM(@uf),
    nome=TRIM(@tipodiretorio),
    cpf=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    cpf=TRIM(@cpf_doador),
    recurso = TRIM(@tipo),
    motivo = TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
