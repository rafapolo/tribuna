use tse;

-- csv header
-- NO_CAND;DS_CARGO;CD_CARGO;NR_CAND;SG_UE_SUP;NO_UE;SG_UE;NR_PART;SG_PART;
-- VR_RECEITA;DT_RECEITA;RTRIM(LTRIM(DR.DS_TITULO));CD_TITULO;DECODE(REC.TP_RECURSO,0,'EMESP�CIE',1,'CHEQUE',2,'ESTIMADO','N�OINFORMADO');TP_RECURSO;NO_DOADOR;CD_CPF_CGC_DOA;RV_MEANING
-- JO�O AUGUSTO MOREIRA PEREIRA;Vereador;13;11101;RJ;RIO DE JANEIRO;60011;11;PP;
-- 768;27/09/2004;Recursos de Pessoas Juridicas;10010300;Estimado;2;PARTIDO PROGRESSISTA;00887169000296;Regular

load data local infile 'fontes_tse/2004/2004/Candidato/Receita/ReceitaCandidato.CSV'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@nome, @cargo, @numero, @cod_uf, @uf, @nome_uf, @nr_part, @sg_part, @partido,
     @valor, @data, @recurso, @tp_recurso, @especie, @tp_especie, @doador, @cpf_doador, @meaning)
SET
  ano="2004", tipo="candidato",
  uf = @uf, nome=@nome, cargo=@cargo, numero=@numero, cpf=@cpf_doador,
  doador=@doador,
  partido=@partido,
  recurso = @especie,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
