use tse

-- DS_ORGAO";"NR_PARTIDO";"SG_PART";"SG_UE";"CNPJ";"VR_RECEITA";"DT_RECEITA";"RTRIM(LTRIM(DR.DS_TITULO))";"CD_TITULO";"RV_MEANING";"TP_RECURSO";"NO_DOADOR";"CD_CPF_CGC_DOA";"NO_UE";"SITUACAOCADASTRAL
-- Comit� Financeiro �nico";"33";"PMN";"MG";"08138875000166";"10000";"29/09/2006";"RECURSOS DE PARTIDO POL�TICO";"10020000";"Estimado";"2";"Diret�rio Nacional PMN-BR";"";"";"Cancelado
-- Comit� Financeiro �nico";"33";"PMN";"MG";"08138875000166";"31600";"14/09/2006";"Recursos de pessoas jur�dicas";"10010300";"Estimado";"2";"CONSERVA DE ESTRADAS LTDA";"16661910000155";"";"Regular

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
