-- ---------------------   << aula1exer2 >>   ---------------------
--
--                                   SCRIPT FÍSICO (DDL)                               
-- 
-- Data Criacao ...........: 04/09/2023
-- Autor(es) ..............: Artur Rodrigues Sousa Alves
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula1exer2
-- 
-- 
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- --------------------------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS aula1exer2;
USE aula1exer2;

CREATE TABLE telefone (
    idTelefone INT NOT NULL AUTO_INCREMENT,
    telefone DECIMAL(11,0) NOT NULL,
    CONSTRAINT telefone_PK PRIMARY KEY (idTelefone)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PESSOA (
    nome VARCHAR(50) NOT NULL,
    cpf DECIMAL(11,0) NOT NULL,
    senha VARCHAR(20) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (cpf),
    CONSTRAINT PESSOA_UK UNIQUE KEY(cpf, senha)
) ENGINE = InnoDB;

CREATE TABLE EMPREGADO (
    matricula INT NOT NULL,
    rua VARCHAR(40) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(40) NOT NULL,
    cep DECIMAL(8,0) NOT NULL,
    cidade VARCHAR(40) NOT NULL,
    estado CHAR(2) NOT NULL,
    idTelefone INT NOT NULL,
    cpf DECIMAL(11,0) NOT NULL,
	CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    
    CONSTRAINT EMPREGADO_telefone_FK FOREIGN KEY (idTelefone) REFERENCES telefone(idTelefone)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
	
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA(cpf)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT,
        
    CONSTRAINT EMPREGADO_telefone_UK UNIQUE KEY (matricula, idTelefone)
) ENGINE = InnoDB;

CREATE TABLE FORMACAO (
    idFormacao INT NOT NULL AUTO_INCREMENT,
    nomeFormacao VARCHAR(20) NOT NULL,
    CONSTRAINT FORMACAO_PK PRIMARY KEY (idFormacao),
    CONSTRAINT FORMACAO_UK UNIQUE KEY (idFormacao, nomeFormacao)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE GERENTE (
    email VARCHAR(100) NOT NULL,
    idGerente INT NOT NULL AUTO_INCREMENT,
    cpf DECIMAL(11,0) NOT NULL,
    idFormacao INT NOT NULL,
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) REFERENCES PESSOA(cpf)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
        
	CONSTRAINT GERENTE_FORMACAO_FK FOREIGN KEY (idFormacao) REFERENCES FORMACAO(idFormacao) 
		ON DELETE RESTRICT
        ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PRODUTO (
    precoUnitario DECIMAL(7,2) NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    codigoProduto INT NOT NULL,
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoProduto)
) ENGINE = InnoDB;

CREATE TABLE VENDA (
    dataVenda DATE NOT NULL,
    idVenda INT NOT NULL AUTO_INCREMENT,
    matricula INT NOT NULL,
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE possui (
    codigoProduto INT NOT NULL,
    idVenda INT NOT NULL,
    
    CONSTRAINT NOTA_PRODUTO_FK FOREIGN KEY (codigoProduto) REFERENCES PRODUTO(codigoProduto)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    
    CONSTRAINT NOTA_VENDA_FK FOREIGN KEY (idVenda) REFERENCES VENDA(idVenda)
		ON DELETE RESTRICT
		ON UPDATE RESTRICT
) ENGINE = InnoDB;

CREATE TABLE supervisiona (
    idGerente INT NOT NULL,
    matricula INT NOT NULL,
    
    CONSTRAINT supervisiona_GERENTE_FK FOREIGN KEY (idGerente) REFERENCES GERENTE(idGerente)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT,
    
    CONSTRAINT supervisiona_EMPREGADO_FK FOREIGN KEY (matricula) REFERENCES EMPREGADO(matricula)
		ON DELETE RESTRICT
        ON UPDATE RESTRICT
) ENGINE = InnoDB;