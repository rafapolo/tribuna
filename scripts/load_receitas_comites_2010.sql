USE tse

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/AC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/AL/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/AM/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/AP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/BA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/BR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/CE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/DF/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/ES/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/GO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/MA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/MG/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/MS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/MT/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/PA/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/PB/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/PE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/PI/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/PR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/RJ/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/RN/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/RO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/RR/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/RS/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/SC/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/SE/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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



LOAD DATA LOCAL infile 'fontes_tse/2010/comite/SP/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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

LOAD DATA LOCAL infile 'fontes_tse/2010/comite/TO/ReceitasComites.txt'
INTO TABLE doacoes
fields terminated BY ';'
lines terminated BY '\n'
IGNORE 1 lines
(@proc, @uf, @nome, @partido, @doc, @ndoc, @cpf, @doador, @data, @valor, @tp_rec, @c, @recurso, @motivo)
SET ano="2010",
    tipo="comite",
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
