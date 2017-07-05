use tse;
load data local infile '/home/lontra/Projetos/tribuna/fontes_tse/2016/receitas_candidatos_prestacao_contas_final_2016_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@cod, @desc, @data, @pretador, @seqcand, @uf, @suf, @mun, @partido,
    @numero, @cargo, @nome, @cpfcandidato, @cpfvice, @recibo, @numdoc, @cpf_doador,
      @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforiginario, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2016", tipo="candidato",
  uf = @uf,
  nome=@nome,
  cargo=@cargo,
  numero=@numero,
  cpf=@cpf_doador,
  cpf_vice=@cpfvice,
  cpf_candidato=@cpfcandidato,
  doador=@doador,
  partido=@partido,
  recurso = @especie,
  motivo = @descrec,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
