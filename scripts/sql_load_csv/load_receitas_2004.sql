use tse;

-- load candidatos
load data local infile 'fontes_tse/2004/2004/Candidato/Receita/ReceitaCandidato.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@nome, @cargo, @numero, @cod_uf, @uf, @nome_uf, @nr_part, @sg_part, @partido,
     @valor, @data, @recurso, @tp_recurso, @especie, @tp_especie, @doador, @cpf_doador, @meaning)
SET
  ano="2004", tipo="candidato",
  uf = @uf, nome=@nome, cargo=@cargo, numero=@numero, cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @especie,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));

-- load comites
load data local infile 'fontes_tse/2004/2004/Comit/Receita/ReceitaComit.CSV'
  into table doacoes
    fields terminated by ';'
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
