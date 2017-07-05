use tse

load data local infile 'fontes_tse/2008/prestacao_contas_2008/2008/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @cue, @nuf, @cnpj, @valor, @data, @motivo,
      @titulo, @tipo, @tp_recurso, @doador, @cpf_doador, @no, @sit, @c3, @c4, @c5, @c6)

  SET
    ano="2008", tipo="comite",
    uf = @uf,
    nome=@tipodiretorio,
    cpf=@cpforig,
    doador=@doador, partido=@partido,
    numero=@numero,
    cpf_candidato=@cpf,
    cpf=@cpf_doador,
    recurso = @tipo,
    motivo = @motivo,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ))
