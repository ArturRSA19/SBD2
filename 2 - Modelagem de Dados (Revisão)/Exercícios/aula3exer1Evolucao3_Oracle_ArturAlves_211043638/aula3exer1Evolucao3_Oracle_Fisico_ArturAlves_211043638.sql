-- ---------------------   << Exercício 1 da Aula 3 Evolução 3 >>   ---------------------
--
--                    		SCRIPT DE CRIAÇÃO (DDL)
-- 
-- Data Criacao ...........: 02/10/2023
-- Autor(es) ..............: Leonardo Vitoriano, Erick Melo Vidal de Oliveira, Artur Alves
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao3
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
--         => 02 Sequências
-- 
-- Ultimas Alterações
--   09/10/2023 => Removido os atributos 'inicio' e 'fim', e adicionado 'dtEntrada', 'hrEntrada', 
-- 					'dtSaida' e 'hrSaida', na tabela POSSUI;
--   23/10/2023 => Criacao de 2 sequences
--              => Atribuicao de chave unica ao atributo hrEntrada e idARSA_SETOR da tabela aloca
-- -----------------------------------------------------------------

CREATE SEQUENCE ARSA_SQ_SETOR
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE ARSA_SQ_ESPECIALIDADE
START WITH 1
INCREMENT BY 1;

CREATE TABLE ARSA_SETOR (
    idSetor INT NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    
    CONSTRAINT ARSA_SETOR_PK PRIMARY KEY (idSetor)
);

CREATE TABLE ARSA_ESPECIALIDADE (
    idEspecialidade INT NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    
    CONSTRAINT ARSA_ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade)
);

CREATE TABLE ARSA_PLANTONISTA (
    matricula NUMBER(10,0) NOT NULL,
    nomeCompleto VARCHAR2(50) NOT NULL,
    sexo CHAR(1) CHECK(sexo IN('M', 'F')) NOT NULL,

	CONSTRAINT ARSA_PLANTONISTA_PK PRIMARY KEY (matricula)
);

CREATE TABLE ARSA_aloca (
	matricula NUMBER(10,0) NOT NULL,
    idSetor INT NOT NULL,
    dtEntrada DATE NOT NULL,
    hrEntrada TIME NOT NULL,
    dtSaida DATE NOT NULL,
    hrSaida TIME NOT NULL,
    
    CONSTRAINT ARSA_aloca_UK UNIQUE KEY (matricula, dtEntrada, hrEntrada, idSetor),
    CONSTRAINT ARSA_aloca_PLANTONISTA_FK FOREIGN KEY (matricula)
	REFERENCES ARSA_PLANTONISTA(matricula),
    
	CONSTRAINT ARSA_aloca_SETOR_FK FOREIGN KEY (idSetor)
	REFERENCES ARSA_SETOR(idSetor) 
		  
		 
);

CREATE TABLE ARSA_possui (
    matricula NUMBER(10,0) NOT NULL,
    idEspecialidade INT DEFAULT 1,
    
    CONSTRAINT ARSA_possui_PLANTONISTA_FK FOREIGN KEY (matricula)
	REFERENCES ARSA_PLANTONISTA(matricula),
    
	CONSTRAINT ARSA_possui_ESPECIALIDADE_FK FOREIGN KEY (idEspecialidade)
	REFERENCES ARSA_ESPECIALIDADE(idEspecialidade)
		  
         
);
