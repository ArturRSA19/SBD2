-- -------- < aula4extra1 > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 04/09/2023
-- Autor(es) ..............: Artur Rodrigues Sousa Alves
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
-- 
-- Ultimas Alteracoes
--   04/09/2023 => Criação das tabelas e da base de dados.
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4extra1;
USE aula4extra1;

CREATE TABLE ESTADO (
    sigla char(2) NOT NULL,
    nome char(20) NOT NULL,
    CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
) ENGINE = INNODB;

CREATE TABLE CIDADE (
    codigo int NOT NULL AUTO_INCREMENT,
    nome char(50) NOT NULL,
    habitantes int NOT NULL,
    sigla char(2) NOT NULL,
    CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla) REFERENCES ESTADO (sigla),
    CONSTRAINT CIDADE_UK UNIQUE (sigla, nome), -- Chave Candidata (UK) para Sigla e Nome da Cidade
    CONSTRAINT CIDADE_HABITANTES_CK CHECK (habitantes > 1000) -- Restrição de Verificação (CK) para Habitantes maiores que mil
) ENGINE = INNODB;
