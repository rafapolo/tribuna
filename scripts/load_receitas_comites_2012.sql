use tse

load data local infile 'fontes_tse/2012/receitas_comites_2012_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cel, @desele, @dtpro, @seqcom, @uf, @cuf, @mun, @tipodiretorio, @partido, @tdoc, @ndoc,
    @cpf, @doador, @nomrec, @setec, @data, @valor, @trec, @motivo, @tipo)

  SET
    ano="2012", tipo="comite",
    uf = @uf,
    nome=@tipodiretorio,
    cpf=@cpforig,
    doador=@doador, partido=@partido,
    numero=@numero,
    cpf=@cpf,
    recurso = @tipo,
    motivo = @motivo,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ))
