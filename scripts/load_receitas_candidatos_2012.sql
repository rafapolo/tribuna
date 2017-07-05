use tse

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
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @tipo,
    motivo=@motivo,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
