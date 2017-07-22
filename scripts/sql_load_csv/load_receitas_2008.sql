use tse
# "SEQUENCIAL_CANDIDATO";"NM_CANDIDATO";"SEXO";"DS_CARGO";"CD_CARGO";"NR_CANDIDATO";"SG_UE_SUPERIOR";"NM_UE";"SG_UE";"DS_NR_TITULO_ELEITOR";"CD_NUM_CPF";"CD_NUM_CNPJ";"NR_PARTIDO";"SG_PARTIDO";"VR_RECEITA";"DT_RECEITA";"DS_TITULO";"CD_TITULO";"DS_ESP_RECURSO";"CD_ESP_RECURSO";"NM_DOADOR";"CD_CPF_CNPJ_DOADOR";"SG_UE_SUPERIOR_1";"NM_UE_1";"SG_UE_1";"SITUACAOCADASTRAL";"NM_ADM";"CD_CPF_ADM"
# "801";"JOS� DONISETE DE MELO";"Masculino";"Prefeito";"11";"15";"AC";"ACREL�NDIA";"01120";"002803292410";"39642232120";"10051359000141";"15";"PMDB";"5000";"2/10/2008";"RECURSOS DE OUTROS CANDIDATOS/COMIT�S";"10040000";"Em esp�cie";"5";"Comit� Financeiro Municipal �nico";"10120289000136";"AC";"ACREL�NDIA";"01120";"BAIXADA";;

-- load candidatos
load data local infile 'fontes_tse/2008/prestacao_contas_2008/2008/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
    lines terminated by '\n'
    ignore 1 lines

    (@seq, @nome, @sexo, @cargo, @cd_cargo, @numero, @uf, @nmue, @seue, @tit_ele,
      @cpf_candidato, @pj_campanha, @num_part, @partido, @valor, @data, @motivo, @sg,
        @tipo, @cd_tp, @doador, @cpf, @uf_d, @n_uf, @adm, @sit, @nm_adm, @cpf_adm)

  SET
    ano="2008",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@tipo),
    motivo=TRIM(@motivo),
    data=LEFT(TRIM(@data), 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
  SHOW WARNINGS;

# DS_ORGAO";"NR_PARTIDO";"SG_PARTIDO";"SG_UE_SUPERIOR";"NM_UE";"SG_UE";"NR_CNPJ";"VR_RECEITA";"DT_RECEITA";"RTRIM(LTRIM(DR.DS_TITULO))";"CD_TITULO";"DS_ESP_RECURSO";"CD_ESP_RECURSO";"NM_DOADOR";"CD_CPF_CNPJ_DOADOR";"SG_UE_SUPERIOR_1";"NM_UE_1";"SG_UE_1";"SITUACAOCADASTRAL";"NM_MEMBRO";"NR_CPF
# Comit� Financeiro Municipal para Prefeito";"13";"PT";"AC";"RIO BRANCO";"01392";"";"6000";"29/07/2008";"Recursos de pessoas f�sicas";"10010200";"Estimado";"2";"MARCELO SANTIAGO DE OLIVEIRA";"61667544268";"";"";"";"REGULAR";"RAIMUNDO ANGELIM VASCONCELOS";"02820935249

-- load comites
load data local infile 'fontes_tse/2008/prestacao_contas_2008/2008/Comitê/Receita/ReceitaComitê.CSV'
  into table doacoes
    fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
    lines terminated by '\n'
    ignore 1 lines

    (@tipodiretorio, @numero, @partido, @uf, @cue, @nuf, @cnpj, @valor, @data, @motivo,
      @titulo, @tipo, @tp_recurso, @doador, @cpf_doador, @no, @sit, @c3, @c4, @c5, @c6)

  SET
    ano="2008",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cnpj),
    cpf_doador=TRIM(@cpf_doador),
    recurso=TRIM(@tipo),
    motivo=TRIM(@motivo),
    data=LEFT(TRIM(@data), 10),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
  SHOW WARNINGS;
