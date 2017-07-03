use tse;

-- csv header
-- "SEQUENCIAL_CANDIDATO";"SG_UF";"SG_PART";"DS_CARGO";"NO_CAND";"NR_CAND";"DT_RECEITA";"CD_CPF_CGC";"SG_UF_DOADOR";"NO_DOADOR";"VR_RECEITA";"TP_RECURSO"
-- 426";"AC";"PL";"Deputado Estadual";"ADALBERTO ALVES FERREIRA";"22234";"16/10/2002";"01536583200";"AC";"ADALBERTO ALVES FERREIRA";"10";"Em esp�cie"

load data local infile 'fontes_tse/2002/prestacao_contas_2002/2002/Candidato/Receita/ReceitaCandidato.csv '
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@seqcand, @uf, @partido, @cargo, @nome, @numero, @data,
    @cpf_doador, @uf_doador, @doador, @valor, @tipo)
SET
  ano="2002", tipo="candidato",
  uf = @uf, nome=@nome, cargo=@cargo, numero=@numero, cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
