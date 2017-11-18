CREATE DATABASE IF NOT EXISTS tse;
USE tse;
DROP TABLE IF EXISTS doacoes;

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
  `tipo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;
