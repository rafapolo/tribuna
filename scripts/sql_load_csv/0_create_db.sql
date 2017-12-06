CREATE DATABASE IF NOT EXISTS tse;
USE tse;
DROP TABLE IF EXISTS doacoes;


-- DESCRIÇÃO DOS CAMPOS
-- id: ID única atribuída na importação
-- uf: Estado no padrão duas letras e maiúsculas (por ex: PA, RJ, MG - BR para candidaturas nacionais)
-- partido: Partido da candidatura
-- cargo: Cargo da candidatura
-- nome: Nome do candidato
-- numero: Numero do candidato nas urnas
-- ano: Ano da eleição, atribuído de acordo com o arquivo importado
-- cpf_candidato: CPF ou CNPJ do candidato
-- doador_original: Presente apenas desde 2014. Indica o doador originário no caso de repasses a candidatos por meio de partidos
-- doador: Nome do doador
-- cpf_doador: CPF ou CNPJ do doador
-- cpf_doador_original: CPF ou CNPJ do doador originário
-- recurso: Identifica "doações estimadas" e outros tipos de recurso, como "Transferência Eletrônica" ou "Cheque"
-- setor_economico: Setor econômico do doador. Disponível apenas desde 2014.
-- data: Data da doação no formato DD/MM/AAAA
-- motivo: Qual a despesa atrelada ao gasto
-- fonte: Origem do recurso (por ex: Fundo Partidário, Recursos de Pessoas Físicas, Doações pela internet)
-- valor: Valor declarado da doação em R$
-- valot_at: Valor em R$ corrigido pela inflação
-- dolar: Valor em dólar (USD). Desabilitado por padrão.
-- tipo: Tipo da candidatura. Aceita 3 valores: partido / comite / candidato



CREATE TABLE `tse`.`doacoes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uf` varchar(2) NOT NULL,
  `partido` varchar(8) DEFAULT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `candidato` varchar(255) DEFAULT NULL,
  `numero` int(15) DEFAULT NULL,
  `ano` int(4) DEFAULT NULL,
  `cpf_candidato` varchar(20) DEFAULT NULL,
  `doador_original` varchar(255) DEFAULT NULL,
  `doador` varchar(255) DEFAULT NULL,
  `cpf_doador` varchar(20) DEFAULT NULL,
  `cpf_doador_original` varchar(20) DEFAULT NULL,
  `recurso` varchar(255) DEFAULT NULL,
  `setor_economico` varchar(255) DEFAULT NULL,
  `data` varchar(20) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `fonte` varchar(255) DEFAULT NULL,
  `valor` double(12,2) DEFAULT NULL,
  `valor_at` double(12,2) DEFAULT NULL,
  -- `dolar` double(12,2) DEFAULT NULL,
  `tipo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
