use tse;

-- csv header
-- SG_UF";"SG_PART";"DS_ORGAO";"DT_RECEITA";"CD_CPF_CGC_DOA";"SG_UF_DOADOR";"NO_DOADOR";"VR_RECEITA";"TP_RECURSO
-- "AC";"PT";"Comit� Financeiro Estadual para Governador";"30/09/0002";"14295190000126";"AC";"EDITEC - EDIFIC E DES. T�C. LTDA";"50000";estimado

load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Comitê/Receita/ReceitaComite.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@uf, @partido, @nome, @data, @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="comite",
  uf = @uf,
  nome=@nome,
  cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
