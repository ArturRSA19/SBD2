-- ---------------------   << aula1exer2 >>   ---------------------
--
--                                   SCRIPT POPULA (DML)                               
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
USE aula1exer2;

INSERT INTO telefone (telefone) VALUES
	(12345678901),
	(98765432109),
	(11122233344),
	(99988877766),
	(55544433322);

INSERT INTO PESSOA (nome, cpf, senha) VALUES
	('João Silva', 12345678901, 'senha123'),
	('Maria Santos', 98765432109, 'senha456'),
	('Carlos Souza', 11122233344, 'senha789'),
	('Ana Oliveira', 99988877766, 'senhaabc'),
	('Pedro Rodrigues', 55544433322, 'senhaxyz');

INSERT INTO FORMACAO (nomeFormacao) VALUES
	('Bacharelado'),
	('Mestrado'),
	('Doutorado'),
	('Técnico'),
	('Ensino Médio');

INSERT INTO EMPREGADO (matricula, rua, numero, bairro, cep, cidade, estado, idTelefone, cpf) VALUES
	(101, 'Rua A', 123, 'Bairro X', 12345678, 'Cidade A', 'SP', 1, 12345678901),
	(102, 'Rua B', 456, 'Bairro Y', 87654321, 'Cidade B', 'RJ', 2, 98765432109),
	(103, 'Rua C', 789, 'Bairro Z', 98765432, 'Cidade C', 'MG', 3, 11122233344),
	(104, 'Rua D', 345, 'Bairro W', 45678901, 'Cidade D', 'SP', 4, 99988877766),
	(105, 'Rua E', 678, 'Bairro V', 23456789, 'Cidade E', 'RJ', 5, 55544433322);

INSERT INTO GERENTE (email, cpf, idFormacao) VALUES
	('gerente1@email.com', 12345678901, 1),
	('gerente2@email.com', 98765432109, 2),
	('gerente3@email.com', 11122233344, 1),
	('gerente4@email.com', 99988877766, 3),
	('gerente5@email.com', 55544433322, 2);

INSERT INTO PRODUTO (precoUnitario, nomeProduto, codigoProduto) VALUES
	(10.99, 'Produto A', 1),
	(25.50, 'Produto B', 2),
	(5.75, 'Produto C', 3),
	(15.99, 'Produto D', 4),
	(8.25, 'Produto E', 5);

INSERT INTO VENDA (dataVenda, matricula) VALUES
	('2023-09-01', 101),
	('2023-09-02', 102),
	('2023-09-03', 103),
	('2023-09-04', 104),
	('2023-09-05', 105);

INSERT INTO possui (codigoProduto, idVenda) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);

INSERT INTO supervisiona (idGerente, matricula) VALUES
	(1, 101),
	(2, 102),
	(3, 103),
	(4, 104),
	(5, 105);
