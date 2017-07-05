USE tse

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/AC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/AL/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/AM/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/AP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/BA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/BR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/CE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/DF/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/ES/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/GO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/MA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/MG/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/MS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/MT/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/PA/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/PB/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/PE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/PI/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/PR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/RJ/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/RN/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/RO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/RR/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/RS/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/SC/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/SE/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/SP/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));

LOAD DATA LOCAL infile 'fontes_tse/2010/candidato/TO/ReceitasCandidatos.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@data, @seq, @uf, @partido, @numero, @cargo, @nome, @cpf_candidato, @nao, @rec, @doc, @cpf, @doador, @data, @valor, @fonte, @motivo, @recurso)
SET ano="2010",
    tipo="candidato",
    uf = @uf,
    nome=@nome,
    cargo=@cargo,
    numero=@numero,
    cpf=@cpf,
    cpf_candidato=@cpf_candidato,
    doador=@doador,
    partido=@partido,
    recurso = @recurso,
    motivo=@motivo,
    data=left(@data, 10),
    valor=cast(replace(@valor, ',', '.') AS decimal(9, 2));
