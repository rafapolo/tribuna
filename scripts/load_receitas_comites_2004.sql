use tse

load data local infile 'fontes_tse/2004/2004/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @seqcom, @uf_b, @valor, @data, @tit_a, @tit_b,
    @recurso, @tp_recurso, @doador, @cpf, @meaning)

  SET
    ano="2004", tipo="comite",
    uf = @uf, nome=@tipodiretorio, cpf=@cpforig,
    doador=@doador, partido=@partido,
    numero=@numero,
    cpf=@cpf,
    recurso = @tipo,
    motivo = @descrec,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ))
