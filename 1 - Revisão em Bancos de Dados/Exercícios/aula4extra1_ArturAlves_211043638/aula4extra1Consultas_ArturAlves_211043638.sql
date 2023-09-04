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
--   04/09/2023 => Consultando dados das tabelas ESTADO e CIDADE.
--
-- ----------------------------------------------------------

USE aula4extra1;

-- A) Projeção de sigla e nome do estado de MS e DF, mostrando uma vez só se tiverem repetidas na tabela de cidades.
SELECT DISTINCT E.sigla, E.nome
FROM ESTADO E
WHERE E.sigla IN ('MS', 'DF');

-- B) Selecione só o nome das cidades e a sigla dos estados de DF, GO e MS sobre as cidades,
--    mostrando em ordem alfabética do estado e em cada um dos estados por ordem alfabética do nome da cidade.
SELECT C.nome AS NomeCidade, C.sigla AS SiglaEstado
FROM CIDADE C
JOIN ESTADO E ON C.sigla = E.sigla
WHERE E.sigla IN ('DF', 'GO', 'MS')
ORDER BY E.sigla, C.nome;

-- C) Selecione todas as cidades do primeiro estado cadastrado,
--    mostrando só o nome da cidade, nome e sigla do estado.
SELECT C.nome AS NomeCidade, E.nome AS NomeEstado, E.sigla AS SiglaEstado
FROM CIDADE C
JOIN ESTADO E ON C.sigla = E.sigla
WHERE E.sigla = (SELECT MIN(sigla) FROM ESTADO);

-- D) Consulte o nome e a sigla do estado cadastrado por último e todas as cidades cadastradas dele,
--    mostrando seu nome e a quantidade de habitantes em ordem alfabética de estado, de nome e de cidade.
SELECT E.nome AS NomeEstado, E.sigla AS SiglaEstado, C.nome AS NomeCidade, C.habitantes AS Habitantes
FROM CIDADE C
JOIN ESTADO E ON C.sigla = E.sigla
WHERE E.sigla = (SELECT MAX(sigla) FROM ESTADO)
ORDER BY E.sigla, C.nome, E.nome;

-- E) Pesquise todos os registros de cidades apresentando ao usuário a sigla do estado
--    e a média aritmética da quantidade de habitantes por estado (e não por cidade),
--    ordenada em ordem decrescente da quantidade dessa média.
SELECT E.sigla AS SiglaEstado, AVG(C.habitantes) AS MediaHabitantes
FROM CIDADE C
JOIN ESTADO E ON C.sigla = E.sigla
GROUP BY E.sigla
ORDER BY MediaHabitantes DESC;

