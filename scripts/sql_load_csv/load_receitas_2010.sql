USE tse

# "Data e hora";"Sequencial Candidato";"UF";"Sigla Partido";"N�mero candidato";"Cargo";"Nome candidato";"CPF do candidato";"Entrega em conjunto?";"N�mero Recibo Eleitoral";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

-- load candidatos
LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/AC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte), 
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/AL/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/AM/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/AP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/BA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/BR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/CE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/DF/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/ES/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/GO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/MA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/MG/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/MS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/MT/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/PA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/PB/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/PE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/PI/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/PR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/RJ/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/RN/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/RO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/RR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/RS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/SC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/SE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/SP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

LOAD DATA LOCAL infile 'fontes_tse/2010/prestacao_contas_2010/candidato/TO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';' OPTIONALLY ENCLOSED BY '"'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @recurso, @motivo)
SET ano="2010",
    tipo="candidato",
    uf=TRIM(@uf),
    candidato=TRIM(@nome),
    cargo=TRIM(@cargo),
    numero=TRIM(@numero),
    cpf_doador=TRIM(@cpf),
    cpf_candidato=TRIM(@cpf_candidato),
    doador=TRIM(@doador),
    partido=TRIM(@partido),
    recurso=TRIM(@recurso),
    motivo=TRIM(@motivo),
    data=LEFT(@data, 10), fonte=TRIM(@fonte),
    valor=IF(TRIM(@valor) = '', NULL, REPLACE(TRIM(@valor), ',', '.'));
SHOW WARNINGS;

