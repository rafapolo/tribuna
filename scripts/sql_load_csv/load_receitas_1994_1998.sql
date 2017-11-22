-- use tse

-- # ELECTION YEAR,FUNCTION,STATE,CAND NAME,CAND BALLOT NAME,CAND FISCAL IDENTIFICATION,PARTY,DATE OF DONATION,DONOR NAME,VALUE IN R$,VALUE IN US$,DONOR CLASSIFICATION,TIPO DE DOADOR,ECONOMIC ACTIVITY,SETOR ECONÔMICO,REASON TO CORRECT,,
  
-- -- load candidatos
-- load data local infile 'csv/pre2002.csv'
--   into table doacoes
--     fields terminated by ','  OPTIONALLY ENCLOSED BY '"'
--     lines terminated by '\n'
--     ignore 1 lines
--     (@ELECTION_YEAR, @FUNCTION, @STATE, @CAND_NAME, @CAND_BNAME, @CAND_ID, @PARTY, @DATE_DONATION, @DONOR_NAME, @VALOR,@VALUE, @DONOR_CLAS, @TIPO_DE_DOADOR, @ECONOMIC_ACTIVITY, @SETOR_ECONÔMICO, @REASON_TO_CORRECT,@NA)
-- SET
--   ano=IF(TRIM(@ELECTION_YEAR) = '', NULL, REPLACE(TRIM(@ELECTION_YEAR), ',', '.')),
--   tipo="candidato",
--   uf=TRIM(@STATE),
--   candidato=TRIM(@CAND_NAME),
--   cargo=TRIM(@FUNCTION),
--   doador=TRIM(@DONOR_NAME),
--   partido=TRIM(@PARTY),
--   recurso=TRIM(@tipo),
--   data=LEFT(TRIM(@DATE_DONATION), 10),
--   valor=IF(TRIM(@VALOR) = '', NULL, REPLACE(TRIM(@VALOR), ',', '.'));
-- SHOW WARNINGS;

-- UPDATE doacoes
-- SET cargo = 'Governador'
-- WHERE cargo = 'GOVERNOR';

-- UPDATE doacoes
-- SET cargo = 'Vice-Governador'
-- WHERE cargo = 'VICE-GOVERNOR';

-- UPDATE doacoes
-- SET cargo = 'Senador'
-- WHERE cargo = 'SENATOR';

-- UPDATE doacoes
-- SET cargo = 'Presidente'
-- WHERE cargo = 'PRESIDENT';

-- UPDATE doacoes
-- SET cargo = 'Deputado Federal'
-- WHERE cargo = 'FEDERAL DEPUTY';