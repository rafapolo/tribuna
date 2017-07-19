USE tse

# "Data e hora";"Sequencial Candidato";"UF";"Sigla Partido";"N�mero candidato";"Cargo";"Nome candidato";"CPF do candidato";"Entrega em conjunto?";"N�mero Recibo Eleitoral";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

-- load candidatos
LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/AC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated by ';'
lines terminated BY '\n'

IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/AL/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/AM/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/AP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/BA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/BR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/CE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/DF/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/ES/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/GO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/MA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/MG/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/MS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/MT/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/PA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/PB/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/PE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/PI/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/PR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/RJ/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/RN/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/RO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/RR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/RS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/SC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/SE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/SP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/candidato/TO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @tipo, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));


-- load comites
# "Data e hora";"UF";"Tipo comite";"Sigla Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/AC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated by ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/AL/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/AM/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/AP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/BA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/BR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/CE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/DF/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/ES/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/GO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/MA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/MG/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/MS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/MT/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/PA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/PB/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/PE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/PI/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/PR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/RJ/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/RN/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/RO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/RR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/RS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/SC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/SE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));



LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/SP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/comite/TO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
    uf = @uf,
    candidato=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf_doador=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

# "Data e hora";"UF";"Tipo partido";"Sigla Partido";"Tipo do documento";"N�mero do documento";"CPF/CNPJ do doador";"Nome do doador";"Data da receita";"Valor receita";"Tipo receita";"Fonte recurso";"Esp�cie recurso";"Descri��o da receita"
-- load partidos
LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/AC/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated by ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/AL/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/AM/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/AP/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/BA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/BR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/CE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/DF/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/ES/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/GO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/MA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/MG/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/MS/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/MT/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/PA/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/PB/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/PE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/PI/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/PR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/RJ/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/RN/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/RO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/RR/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/RS/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/SC/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/SE/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/SP/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/prestacao_contas_2010/2010/partido/TO/ReceitasPartidos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
tipo="partido",
uf = @uf,
candidato=@nome,
cargo=@cargo,
numero=@numero,
cpf_doador=@cpf,
cpf_candidato=@cpf_candidato,
doador=@doador,
partido=@partido,
recurso = @recurso,
motivo=@motivo,
data=left(@data, 10),
valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));
