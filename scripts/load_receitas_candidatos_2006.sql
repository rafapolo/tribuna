use tse;

-- csv header
-- SEQUENCIAL_CANDIDATO;NOME_CANDIDATO;DESCRICAO_CARGO;CODIGO_CARGO;NUMERO_CANDIDATO;UNIDADE_ELEITORAL_CANDIDATO;NUMERO_CNPJ_CANDIDATO;NUMERO_PARTIDO;SIGLA_PARTIDO;VALOR_RECEITA;DATA_RECEITA;TIPO_RECEITA;CODIGO_TIPO_RECEITA;DESCRICAO_TIPO_RECURSO;CODIGO_TIPO_RECURSO;NOME_DOADOR;NUMERO_CPF_CGC_DOADOR;UNIDADE_ELEITORAL_DOADOR;SITUACAO_CADASTRAL
-- 10390;FRANCISCO DUARTE MAIA;Deputado Estadual;7;40000;AC;08124262000170;40;PSB;96;4/08/2006;RECURSOS DE OUTROS CANDIDATOS/COMIT�S;10040000;ESTIMADO;2;COMIT� FINANCEIRO �NICO PSB-AC;;;N�o batido na RFB
-- 10390;FRANCISCO DUARTE MAIA;Deputado Estadual;7;40000;AC;08124262000170;40;PSB;96;10/08/2006;RECURSOS DE OUTROS CANDIDATOS/COMIT�S;10040000;ESTIMADO;2;COMIT� FINANCEIRO �NICO PSB-AC;;;N�o batido na RFB

load data local infile 'fontes_tse/2006/prestacao_contas_2006/2006/Candidato/Receita/ReceitaCandidato.csv'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@seq, @nome, @cargo, @cod_cargo, @numero, @uf, @cnpj_candidato, @num_partido, @partido, @valor, @data, @recurso, @u_e, @tipo, @cod_tipo, @doador, @cpf, @unidel, @sit)
SET
  ano="2006", tipo="candidato",
  uf = @uf,
  nome=@nome,
  cargo=@cargo,
  numero=@numero,
  cpf=@cpf,
  doador=@doador,
  partido=@partido,
  recurso = @tipo,
  motivo= @recurso,
  data=left(@data , 10),
  valor=cast(replace(@valor, ',', '.') AS decimal( 9, 2 ));
