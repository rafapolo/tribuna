use tse

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
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @tipo,
    data=left(@data , 10),
    valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
