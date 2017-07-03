use tse;
load data local infile 'fontes_tse/2014/receitas_comites_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @desc, @data, @pretador, @seqcom, @uf, @tipodiretorio, @partido,
    @tipodoc, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2014", tipo="comite",
    uf = @uf, nome=@tipodiretorio, cpf=@cpforig,
    doador=@doador, partido=@partido,
    numero=@numero,
    cpf_candidato=@cpf,
    recurso = @tipo,
    motivo = @descrec,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
