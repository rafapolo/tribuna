use tse
-- load candidatos
load data local infile 'fontes_tse/2012/receitas_candidatos_2012_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@seq, @descr, @dtproc, @seqca, @uf, @nue, @nomue, @partido, @numero, @cargo,
    @nome, @cpf_candidato, @numrel, @nudoc, @cpf, @doador, @do_re, @ue_d, @npd, @ncd, @cdset,
    @seted, @data, @valor, @tipo_receita, @fonte, @tipo, @motivo)

  SET
    ano="2012", tipo="candidato",
    uf = TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso = TRIM(@tipo),
    motivo=TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;

-- load comites
load data local infile 'fontes_tse/2012/receitas_comites_2012_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cel, @desele, @dtpro, @seqcom, @uf, @cuf, @mun, @tipodiretorio, @partido, @tdoc, @ndoc,
    @cpf, @doador, @nomrec, @setec, @data, @valor, @trec, @motivo, @tipo)

  SET
    ano="2012", tipo="comite",
    uf = TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpforig),
    doador=TRIM(@doador), partido=TRIM(@partido),
    numero=TRIM(@numero),
    recurso = TRIM(@tipo),
    motivo = TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    setor_economico = TRIM(@setec),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;

-- load partidos
load data local infile 'fontes_tse/2012/receitas_partidos_2012_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cel, @desele, @dtpro, @seqcom, @uf, @cuf, @mun, @tipodiretorio, @partido, @tdoc, @ndoc,
    @cpf, @doador, @nomrec, @setec, @sue, @npar, @ncd, @csed, @data, @valor, @trec, @fonte, @especie, @motivo)

  SET
    ano="2012", tipo="partido",
    uf = TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador_original=TRIM(@cpforig),
    doador=TRIM(@doador), partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    setor_economico = TRIM(@setec),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
