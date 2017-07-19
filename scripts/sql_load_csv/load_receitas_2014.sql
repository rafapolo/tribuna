# 

use tse;
# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"CNPJ Prestador Conta";"Sequencial Candidato";"UF";"Sigla  Partido";"Numero candidato";"Cargo";"Nome candidato";"CPF do candidato";"Numero Recibo Eleitoral";"Numero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Especie recurso";"Descricao da receita";"CPF/CNPJ do doador origin�rio";"Nome do doador origin�rio";"Tipo doador origin�rio";"Setor econ�mico do doador origin�rio";"Nome do doador origin�rio (Receita Federal)"

-- load candidatos (esta faltando cpforig para candidato?)
load data local infile 'fontes_tse/2014/receitas_candidatos_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines
    (@cod, @descr, @data, @pretador, @seqcand, @uf, @partido,
      @numero, @cargo, @nome, @cpfcandidato, @recibo, @numdoc, @cpf,
        @doador, @nomdoadreceita, @uf_doador, @numpart, @numcandd, @codseeco,
          @seteco, @dt, @valor, @tipo, @fonte, @especie,
            @descrec, @cpforiginario, @nomedoador, @tipodoro, @setorigi, @nomeorig)
SET
  ano="2014", tipo="candidato",
  uf =      TRIM(@uf),
  candidato=     TRIM(@nome),
  cargo=    TRIM(@cargo),
  numero=   TRIM(@numero),
  cpf_doador=      TRIM(@cpf),
  cpf_doador_original = TRIM(@cpforiginario),
  cpf_candidato=TRIM(@cpfcandidato),
  doador_original=   TRIM(@nomeorig),
  doador=   TRIM(@doador),
  partido=TRIM(@partido),
  recurso = TRIM(@especie),
  motivo =  TRIM(@descrec),
  data=left(TRIM(@dt) , 10),
  setor_economico = TRIM(@setorigi),
  valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
SHOW WARNINGS;

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"CNPJ Prestador Conta";"Sequencial Comite";"UF";"Tipo Comite";"Sigla  Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita";"CPF/CNPJ do doador origin�rio";"Nome do doador origin�rio";"Tipo doador origin�rio";"Setor econ�mico do doador origin�rio";"Nome do doador origin�rio (Receita Federal)"
# "143";"Elei��es Gerais 2014";"09/07/2016 17:24:00";"20603433000149";"448543";"RS";"Comit� Financeiro �nico";"PMDB";"C15000588013RS000439";"2164";"88348024000187";"SBS ENGENHARIA E CONSTRU��O LTDA";"SBS ENGENHARIA E CONSTRUCOES S.A.";"#NULO";"#NULO";"#NULO";"4211101";"Constru��o de rodovias e ferrovias";"29/10/201400:00:00";"50000";"Recursos de pessoas jur�dicas";"Nao especificado";"Transfer�ncia eletr�nica";"#NULO";"#NULO";"#NULO";"#NULO";"#NULO";"#NULO"

-- load comites
load data local infile 'fontes_tse/2014/receitas_comites_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @desc, @data, @pretador, @seqcom, @uf, @tipodiretorio, @partido,
    @tipodoc, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2014", tipo="comite",
    uf = TRIM(@uf),
    candidato = TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpf),
    cpf_doador_original=TRIM(@cpforig),
    doador=TRIM(@doador),
    doador_original=TRIM(@nomeorig),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    setor_economico = TRIM(@setorigi),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;


# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"CNPJ Prestador Conta";"Sequencial Diretorio";"UF";"Tipo diretorio";"Sigla  Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita";"CPF/CNPJ do doador origin�rio";"Nome do doador origin�rio";"Tipo doador origin�rio";"Setor econ�mico do doador origin�rio";"Nome do doador origin�rio (Receita Federal)"
# "143";"Elei��es Gerais 2014";"09/07/2016 17:23:04";"59941682000180";"41682";"SP";"Dire��o Estadual/Distrital";"PSDB";"P45000371072SP000182";"662945000452014";"03653474000120";"Dire��o Nacional";"PARTIDO DA SOCIAL DEMOCRACIA BRASILEIRA";"BR";"45";"#NULO";"9492800";"Atividades de organiza��es pol�ticas";"25-SEP-14";"50000";"Recursos de partido pol�tico";"Outros Recursos nao descritos";"Transfer�ncia eletr�nica";"#NULO";"51990695000137";"BRADESCO VIDA E PREVIDENCIA S/A";"J";"Previd�ncia complementar aberta";"BRADESCO VIDA E PREVIDENCIA S.A."

-- load partido
load data local infile 'fontes_tse/2014/receitas_partidos_2014_brasil.txt'
  into table doacoes
    fields terminated by ';'
    lines terminated by '\n'
    ignore 1 lines

    (@cod, @desc, @data, @pretador, @seqcom, @uf, @tipodiretorio, @partido,
    @tipodoc, @nrdoc, @cpf, @doador, @nomdoadreceita, @uf_doador, @numero, @numcandd, @codseeco,
        @seteco, @data, @valor, @tipo, @fonte, @especie,
          @descrec, @cpforig, @nomedoador, @tipodoro, @setorigi, @nomeorig)

  SET
    ano="2014", tipo="partido",
    uf = TRIM(@uf),
    candidato = TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpforig),
    cpf_doador_original=TRIM(@cpforig),
    doador=TRIM(@doador),
    doador_original=TRIM(@nomeorig),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_candidato=TRIM(@cpf),
    recurso = TRIM(@especie),
    motivo = TRIM(@descrec),
    data=left(TRIM(@data) , 10),
    setor_economico = TRIM(@setorigi),
    valor=cast(replace(TRIM(@valor), ',', '.') AS decimal( 9, 2 ));
  SHOW WARNINGS;
