use tse;
load data local infile '/home/lontra/Projetos/tribuna/fontes_tse/prestacao_final_2014/receitas_candidatos_2014_brasil.txt '
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@cod, @desc, @data, @pretador, @seqcand, @uf, @partido,
    @numero, @cargo, @nome, @cpfcandidato, @recibo, @numdoc, @cpf,
      @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforiginario, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2014", tipo="candidato",
  uf = @uf, nome=@nome, cargo=@cargo, numero=@numero, cpf=@cpf, cpf_vice=@cpfvice, cpf_candidato=@cpfcandidato,
  doador=@doador, partido=@partido,
  recurso = @tipo,
  motivo = @descrec,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
