use tse

-- load candidatos

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"Sequencial Candidato";"UF";"Numero UE";"Municipio";"Sigla  Partido";"Numero candidato";"Cargo";"Nome candidato";"CPF do candidato";"Numero Recibo Eleitoral";"Numero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Especie recurso";"Descricao da receita"
#"47";"Elei��o Municipal 2012";"28/09/201619:37:29";"130000025650";"MG";"42994";"CASCALHO RICO";"PSL";"17";"Prefeito";"D�RIO BORGES DE REZENDE";"76629325672";"0001742994MG000003";"";"71319581668";"BRAZ HUMBERTO GALDINI";"BRAZ HUMERTO GALDINO";"#NULO#";"#NULO#";"#NULO#";"";"";"28/07/201200:00:00";"500";"Recursos de pessoas f�sicas";"Nao especificado";"Estimado";"CESS�O DE CAMINH�O DE SOM PLACA KBO-3275� PARA FINS DE CAMPANHA ELEITRAL DO CANDIDATO - ELEI��ES 2012."

load data local infile 'fontes_tse/2012/prestacao_final_2012/receitas_candidatos_2012_brasil.txt'
  into table doacoes
    fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
    lines terminated by '\n'
    ignore 1 lines

    (@seq, @descr, @dtproc, @seqca, @uf, @nue, @nomue, @partido, @numero, @cargo,
    @nome, @cpf_candidato, @numrel, @nudoc, @cpf, @doador, @do_re, @ue_d, @npd, @ncd, @cdset,
    @seted, @data, @valor, @tipo_receita, @fonte, @tipo, @motivo)

  SET
    ano="2012",
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
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.')),
    fonte=TRIM(@fonte);
  SHOW WARNINGS;


-- load comites

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"Sequencial Comite";"UF";"N�mero UE";"Munic�pio";"Tipo comite";"Sigla  Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

load data local infile 'fontes_tse/2012/prestacao_final_2012/receitas_comites_2012_brasil.txt'
  into table doacoes
    fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
    lines terminated by '\n'
    ignore 1 lines

    (@cel, @desele, @dtpro, @seqcom, @uf, @cuf, @mun, @tipodiretorio, @partido, @tdoc, @ndoc,
    @cpf, @doador, @nomrec, @setec, @data, @valor, @trec, @motivo, @tipo, @descrec)

  SET
    ano="2012",
    tipo="comite",
    uf=TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    recurso=TRIM(@tipo),
    motivo=TRIM(@motivo),
    data=LEFT(TRIM(@data), 10),
    setor_economico=TRIM(@setec),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.')),
    fonte=TRIM(@fonte);
  SHOW WARNINGS;


-- load partidos

# "C�d. Elei��o";"Desc. Elei��o";"Data e hora";"Sequencial Diretorio";"UF";"N�mero UE";"Munic�pio";"Tipo diretorio";"Sigla  Partido";"N�mero Recibo Eleitoral";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Nome do doador (Receita Federal)";"Sigla UE doador";"N�mero partido doador";"N�mero candidato doador";"Cod setor econ�mico do doador";"Setor econ�mico do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

load data local infile 'fontes_tse/2012/prestacao_final_2012/receitas_partidos_2012_brasil.txt'
  into table doacoes
    fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
    lines terminated by '\n'
    ignore 1 lines

    (@cel, @desele, @dtpro, @seqcom, @uf, @cuf, @mun, @tipodiretorio, @partido, @tdoc, @ndoc,
    @cpf, @doador, @nomrec, @sue, @npar, @ncd, @csed, @setord, @data, @valor, @trec, @fonte, @especie, @motivo)

  SET
    ano="2012",
    tipo="partido",
    uf=TRIM(@uf),
    candidato=TRIM(@tipodiretorio),
    cpf_doador_original=TRIM(@cpforig),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    recurso=TRIM(@especie),
    motivo=TRIM(@motivo),
    data=LEFT(TRIM(@data), 10),
    setor_economico=TRIM(@setec),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.')),
    fonte=TRIM(@fonte);
  SHOW WARNINGS;
