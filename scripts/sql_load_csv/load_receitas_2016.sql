use tse;
-- load candidatos
load data local infile 'fontes_tse/2016/receitas_candidatos_prestacao_contas_final_2016_brasil.txt'
  into table doacoes
  fields terminated by ';'
  lines terminated by '\n'
    ignore 1 lines
    (@cod, @descr, @data, @pretador, @seqcand, @uf, @suf, @mun, @partido,
    @numero, @cargo, @nome, @cpfcandidato, @cpfvice, @recibo, @numdoc, @cpf_doador,
      @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforiginario, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2016", tipo="candidato",
  uf = TRIM(@uf),
  nome=TRIM(@nome),
  cargo=TRIM(@cargo),
  numero=TRIM(@numero),
  cpf=TRIM(@cpf_doador),
  cpf_candidato=TRIM(@cpfcandidato),
  doador=TRIM(@doador),
  partido=TRIM(@partido),
  recurso = TRIM(@especie),
  motivo = TRIM(@descrec),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));

-- load partidos
load data local infile 'fontes_tse/2016/receitas_partidos_prestacao_contas_final_2016_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @descr, @data, @pretador, @seqcom, @uf, @suf, @mun, @tipodiretorio, @partido,
      @nrrec, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @motivo, @fonte, @especie, @descrec, @cpforig, @nomedoador,
          @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2016", tipo="comite",
    uf = TRIM(@uf),
    nome=TRIM(@tipodiretorio),
    cpf=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
