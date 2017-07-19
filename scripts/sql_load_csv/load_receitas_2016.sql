use tse;

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"CNPJ Prestador Conta";"Sequencial Candidato";"UF";"Sigla da UE";"Nome da UE";"Sigla  Partido";"Numero candidato";"Cargo";"Nome candidato";"CPF do candidato";"CPF do vice/suplente";"Numero Recibo Eleitoral";"Numero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Especie recurso";"Descricao da receita";"CPF/CNPJ do doador origin�rio";"Nome do doador origin�rio";"Tipo doador origin�rio";"Setor econ�mico do doador origin�rio";"Nome do doador origin�rio (Receita Federal)"
# "220";"Elei��es Municipais 2016";"26/06/201722:11:54";"25877426000159";"250000083796";"SP";"61379";"AMPARO";"PTB";"14123";"Vereador";"ELCIO GIGLIO";"67932525853";"#NULO";"141231361379SP000018E";"#NULO";"47828298000196";"Dire��o Estadual/Distrital";"PARTIDO TRABALHISTA BRASILEIRO";"SP";"14";"14123";"#NULO";"#NULO";"06/09/201600:00:00";"58";"Recursos de partido pol�tico";"Outros Recursos";"Estimado";"10MIL SANTINHOS VR UNIT 0�0058 VR TOT 58�00 CFE NF 5544";"36958746864";"NATALIA CAVALCANTE YOSHIDA";"F";"#NULO";"NATALIA CAVALCANTE YOSHIDA"

-- load candidatos
load data local infile 'fontes_tse/2016/prestacao_contas_final_2016/receitas_candidatos_prestacao_contas_final_2016_brasil.txt'
  into table doacoes
  fields terminated by ';'
  lines terminated by '\n'
    ignore 1 lines
    (@cod, @descr, @data, @pretador, @seqcand, @uf, @suf, @mun, @partido,
    @numero, @cargo, @nome, @cpfcandidato, @cpfvice, @recibo, @numdoc, @cpf_doador,
      @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2016", tipo="candidato",
  uf = TRIM(@uf),
  candidato=TRIM(@nome),
  cargo=TRIM(@cargo),
  numero=TRIM(@numero),
  cpf_doador=TRIM(@cpf_doador),
  cpf_doador_original=TRIM(@cpforig),
  cpf_candidato=TRIM(@cpfcandidato),
  doador=TRIM(@doador),
  doador_original=TRIM(@nomedoador),
  partido=TRIM(@partido),
  recurso = TRIM(@especie),
  motivo = TRIM(@descrec),
  data=left(TRIM(@data) , 10),
  setor_economico = TRIM(@setorigi),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"CNPJ Prestador Conta";"Sequencial prestador conta";"UF";"Sigla da UE";"Nome da UE";"Tipo diretorio";"Sigla  Partido";"N�mero recibo eleitoral";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita";"CPF/CNPJ do doador origin�rio";"Nome do doador origin�rio";"Tipo doador origin�rio";"Setor econ�mico do doador origin�rio";"Nome do doador origin�rio (Receita Federal)"
#"220";"Elei��es Municipais 2016";"26/06/2017 23:23:04";"01390144000164";"235431";"MG";"51950";"SANTA VIT�RIA";"Dire��o Municipal/Comiss�o Provis�ria";"PMDB";"P15000451950MG000001E";"#NULO";"44176317604";"LINDOMAR ROSA DE MIRANDA";"LINDOMAR ROSA DE MIRANDA";"#NULO";"15";"#NULO";"#NULO";"#NULO";"16-AUG-16";"100";"Recursos de pessoas f�sicas";"Outros Recursos";"Estimado";"DOACAO DE SERVICOS DE CONTABILIDADE";"#NULO";"#NULO";"#NULO";"#NULO";"#NULO"
-- load partidos
load data local infile 'fontes_tse/2016/prestacao_contas_final_2016/receitas_partidos_prestacao_contas_final_2016_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @descr, @data, @pretador, @seqcom, @uf, @suf, @mun, @tipodiretorio, @partido,
      @nrrec, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @motivo, @fonte, @especie, @descrec, @cpforig, @nomedoador,
          @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2016", tipo="comite",
    uf = TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpforig),
    doador=TRIM(@doador),
    cpf_doador_original=TRIM(@cpforig),
    doador_original=TRIM(@nomedoador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    setor_economico = TRIM(@setorigi),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
