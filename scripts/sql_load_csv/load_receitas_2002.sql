use tse


#"SEQUENCIAL_CANDIDATO";"SG_UF";"SG_PART";"DS_CARGO";"NO_CAND";"NR_CAND";"DT_RECEITA";"CD_CPF_CGC";"SG_UF_DOADOR";"NO_DOADOR";"VR_RECEITA";"TP_RECURSO"
# "426";"AC";"PL";"Deputado Estadual";"ADALBERTO ALVES FERREIRA";"22234";"16/10/2002";"01536583200";"AC";"ADALBERTO ALVES FERREIRA";"10";"Em esp�cie"

-- load candidatos
load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\r\n'
    ignore 1 lines
    (@seqcand, @uf, @partido, @cargo, @nome, @numero, @data,
      @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="candidato",
  uf =      TRIM(@uf),
  candidato =    TRIM(@nome),
  cargo =   TRIM(@cargo),
  numero =  TRIM(@numero),
  cpf_doador =  TRIM(@cpf_doador),
  doador =  TRIM(@doador),
  partido = TRIM(@partido),
  recurso = TRIM(@tipo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;

-- load comites
## SG_UF";"SG_PART";"DS_ORGAO";"DT_RECEITA";"CD_CPF_CGC_DOA";"SG_UF_DOADOR";"NO_DOADOR";"VR_RECEITA";"TP_RECURSO
## AC";"PT";"Comit� Financeiro Estadual para Governador";"30/09/0002";"14295190000126";"AC";"EDITEC - EDIFIC E DES. T�C. LTDA";"50000";"estimado

load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Comitê/Receita/ReceitaComite.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@uf, @partido, @nome, @data, @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="comite",
  uf =      TRIM(@uf),
  candidato =    TRIM(@nome),
  cpf_doador =     TRIM(@cpf_doador),
  doador =  TRIM(@doador),
  partido = TRIM(@partido),
  recurso = TRIM(@tipo),
  data=left(TRIM(@data) , 10),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;
