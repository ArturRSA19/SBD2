-- ---------------------   << Exercício 1 da Aula 3 Evolução 3 >>   ---------------------
--
--                    		SCRIPT POPULA (DML)
-- 
-- Data Criacao ...........: 02/10/2023
-- Autor(es) ..............: Leonardo Vitoriano, Erick Melo Vidal de Oliveira, Artur Alves
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao3
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 02 Sequencias
-- 
-- MODIFICACOES (23/10/2023) => Adicionando mais uma consulta
-- -----------------------------------------------------------------


-- 1) Indicar todos os plantonistas por um setor específico fornecido pelo usuário da consulta, 
-- que será apresentada em ordem decrescente de horário;

SELECT A.matricula AS "matricula plantonista", S.nome AS "nome setor", A.dtEntrada AS "data entrada", A.hrEntrada AS "hora entrada"
	FROM ARSA_aloca A
    INNER JOIN SETOR S ON S.idSetor = A.idSetor
    ORDER BY A.dtEntrada, A.hrEntrada DESC;

-- 2)  Mostrar todos os plantonistas em uma data fornecida pelo usuário em ordem crescente de data 
-- (consulta no padrão DE__  ATÉ__  para datas), em que o intervalo DE e o ATÉ serão fornecidos pelo usuário;

SELECT P.matricula, P.nomeCompleto AS "nome plantonista", A.dtEntrada AS "data entrada", 
		A.hrEntrada AS "hora entrada", A.dtSaida AS "data saída", A.hrSaida AS "hora saída"
	FROM ARSA_aloca A
	INNER JOIN ARSA_PLANTONISTA P ON A.matricula = P.matricula
    WHERE A.dtEntrada >= "YYYY-MM-DD" AND A.dtSaida <= "YYYY-MM-DD"
    ORDER BY A.dtEntrada, A.hrEntrada DESC;    

-- 3)  Consulta os plantonistas por parte do nome e mostrar todos os seus dados pessoais cadastrados 
-- e em qual setor (ou setores) ele realiza atividades, mostrando somente o nome do setor e os dados pessoais;

SELECT S.nome AS "nome setor",  P.matricula, P.nomeCompleto AS "nome plantonista", P.sexo
	FROM ARSA_aloca A
    INNER JOIN ARSA_PLANTONISTA P ON P.matricula = A.matricula
    INNER JOIN ARSA_SETOR S ON S.idSetor = A.idSetor
    WHERE P.nomeCompleto LIKE '%%'
    ORDER BY P.nomeCompleto, S.nome; 

-- 4)  Apresentar todas as especialidades e quantos plantonistas têm para cada uma destas especialidades cadastradas no banco de dados,
-- inclusive as que NÃO tiverem plantonista no momento (zero plantonista na especialidade, mas apresentar para usuário saber qual área está sem plantonista).

SELECT E.nome AS "nome especialidade", COUNT(P.matricula) AS quantidade_plantonistas
	FROM ARSA_ESPECIALIDADE E
	LEFT JOIN ARSA_possui P ON E.idEspecialidade = P.idEspecialidade
	GROUP BY E.nome
    ORDER BY quantidade_plantonistas DESC;	

--  5)  Pesquisar em um dia específico um intervalo de horas usando a opção DE e ATÉ para o intervalo de horas desejado pelo usuário.

SELECT p.nomeCompleto, a.dtEntrada, a.hrEntrada, a.dtSaida, a.hrSaida
FROM ARSA_aloca a
JOIN ARSA_PLANTONISTA p ON a.matricula = p.matricula
WHERE a.dtEntrada = '2023-09-02'
  AND a.hrEntrada >= '00:00:00'
  AND a.hrSaida <= '23:59:59';
