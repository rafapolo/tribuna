use tse;

# "SEQUENCIAL_CANDIDATO";"NOME_CANDIDATO";"DESCRICAO_CARGO";"CODIGO_CARGO";"NUMERO_CANDIDATO";"UNIDADE_ELEITORAL_CANDIDATO";"NUMERO_CNPJ_CANDIDATO";"NUMERO_PARTIDO";"SIGLA_PARTIDO";"VALOR_RECEITA";"DATA_RECEITA";"TIPO_RECEITA";"CODIGO_TIPO_RECEITA";"DESCRICAO_TIPO_RECURSO";"CODIGO_TIPO_RECURSO";"NOME_DOADOR";"NUMERO_CPF_CGC_DOADOR";"UNIDADE_ELEITORAL_DOADOR";"SITUACAO_CADASTRAL"
# "10390";"FRANCISCO DUARTE MAIA";"Deputado Estadual";"7";"40000";"AC";"08124262000170";"40";"PSB";"96";"4/08/2006";"RECURSOS DE OUTROS CANDIDATOS/COMIT�S";"10040000";"ESTIMADO";"2";"COMIT� FINANCEIRO �NICO PSB-AC";"#NULO#";;"N�o batido na RFB"

-- load candidatos
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@seq, @nome, @cargo, @cod_cargo, @numero, @uf, @cnpj_candidato, @num_partido, @partido, @valor, @data, @motivo, @u_e, @recurso, @cod_tipo, @doador, @cpf, @unidel, @sit)
SET
  ano="2006", tipo="candidato",
  uf = TRIM(@uf),
  candidato=TRIM(@nome),
  cargo=TRIM(@cargo),
  numero=TRIM(@numero),
  cpf_candidato=TRIM(@cnpj_candidato),
  cpf_doador=TRIM(@cpf),
  doador=TRIM(@doador),
  partido=TRIM(@partido),
  recurso = TRIM(@recurso),
  motivo= TRIM(@motivo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;

# DS_ORGAO";"NR_PARTIDO";"SG_PART";"SG_UE";"CNPJ";"VR_RECEITA";"DT_RECEITA";"RTRIM(LTRIM(DR.DS_TITULO))";"CD_TITULO";"RV_MEANING";"TP_RECURSO";"NO_DOADOR";"CD_CPF_CGC_DOA";"NO_UE";"SITUACAOCADASTRAL
#Comit� Financeiro �nico";"33";"PMN";"MG";"08138875000166";"10000";"29/09/2006";"RECURSOS DE PARTIDO POL�TICO";"10020000";"Estimado";"2";"Diret�rio Nacional PMN-BR";"";"";"Cancelado

-- load comites
load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @cpf, @valor, @data, @motivo,
      @titulo, @recurso, @tp_recurso, @doador, @cpf_doador, @no, @sit)

  SET
    ano="2006", tipo="comite",
    uf = TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    cpf_doador=TRIM(@cpf_doador),
    recurso = TRIM(@recurso),
    motivo = TRIM(@motivo),
    data=left(TRIM(@data) , 10),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
