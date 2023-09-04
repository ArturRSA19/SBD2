-- -------- < aula4extra1 > --------
--
--                    SCRIPT (DML)
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
--   04/09/2023 => Inserindo dados nas tabelas ESTADO e CIDADE.
--
-- ----------------------------------------------------------

USE aula4extra1;

INSERT INTO ESTADO VALUES
	('AC', 'Acre'),
    ('DF', 'Brasília'), 
    ('GO', 'Goiás'),
    ('MS', 'Mato Grosso do Sul');
    
INSERT INTO CIDADE VALUES
	(1, 'Rio Branco', 50000, 'AC'),
    (2, 'Cruzeiro do Sul', 87446, 'AC'),
    (3, 'Brasília', 3053160, 'DF'),
    (4, 'Águas Claras', 228770, 'DF'),
    (5, 'Taguatinga', 325639, 'DF'),
    (6, 'Novo Gama', 100000, 'GO'),
    (7, 'Águas Lindas', 130000, 'GO'),
    (8, 'Maracaju', 60000, 'MS'),
	(9, 'Campo Grande', 813000, 'MS'),
    (10, 'Três Lagoas', 143000, 'MS');