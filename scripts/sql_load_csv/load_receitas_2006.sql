use tse;

-- load candidatos
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@seq, @nome, @cargo, @cod_cargo, @numero, @uf, @cnpj_candidato, @num_partido, @partido, @valor, @data, @recurso, @u_e, @tipo, @cod_tipo, @doador, @cpf, @unidel, @sit)
SET
  ano="2006", tipo="candidato",
  uf = @uf,
  nome=@nome,
  cargo=@cargo,
  numero=@numero,
  cpf=@cpf,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  motivo= @recurso,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));

-- load comites
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @pf, @valor, @data, @tipo,
      @titulo, @motivo, @tp_recurso, @doador, @cpf_doador, @no, @sit)

  SET
    ano="2006", tipo="comite",
    uf = @uf, nome=@tipodiretorio, cpf=@cpforig,
    doador=@doador, partido=@partido,
    numero=@numero,
    cpf_candidato=@cpf,
    cpf=@cpf_doador,
    recurso = @tipo,
    motivo = @motivo,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ))
