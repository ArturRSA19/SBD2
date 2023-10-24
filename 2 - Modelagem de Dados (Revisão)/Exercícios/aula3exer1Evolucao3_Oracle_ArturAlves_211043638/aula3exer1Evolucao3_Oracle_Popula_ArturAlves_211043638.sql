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
-- MODIFICACOES (23/10/2023) => Adaptando para o ambiente ORACLE 
-- -----------------------------------------------------------------



-- Inserindo valores na tabela SETOR
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval, 'Emergência');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'UTI');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Clínica Médica');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Cirurgia');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Cardiologia');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Pediatria');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Ortopedia');
INSERT INTO ARSA_SETOR (idSetor, nome) VALUES (ARSA_SQ_SETOR.nextval,'Neurologia');

-- Inserindo tuplas na tabela ESPECIALIDADE
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Enfermeiro Geral');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Pneumologia');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Neurologia');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Psiquiatria');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Oncologia');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Endocrinologia');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Ortopedia');
INSERT INTO ARSA_ESPECIALIDADE (idEspecialidade, nome) VALUES (ARSA_SQ_ESPECIALIDADE.nextval,'Cardiologia');

-- Inserindo tuplas na tabela PLANTONISTA
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (84759274938, 'Maria da Silva', 'F');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (99224601858, 'João Santos', 'M');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (74090167373, 'Pedro Souza', 'M');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (25899460182, 'José Antônio', 'M');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (93730174067, 'Júlia Mendes', 'F');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (68811749899, 'Ana Oliveira', 'F');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (98765432100, 'Carlos Rodrigues', 'M');
INSERT INTO ARSA_PLANTONISTA (matricula, nomeCompleto, sexo) VALUES (12345678901, 'Mariana Santos', 'F');

-- Inserindo tuplas na tabela aloca
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (84759274938, 1, TO_DATE('2023-09-10', 'YY-MM-DD'), TO_TIME('08:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-10', 'YY-MM-DD'), TO_TIME('12:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (84759274938, 2, TO_DATE('2023-09-01', 'YY-MM-DD'), TO_TIME('08:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-01', 'YY-MM-DD'), TO_TIME('12:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (99224601858, 3, TO_DATE('2023-09-02', 'YY-MM-DD'), TO_TIME('14:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-02', 'YY-MM-DD'), TO_TIME('18:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (74090167373, 3, TO_DATE('2023-09-02', 'YY-MM-DD'), TO_TIME('14:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-02', 'YY-MM-DD'), TO_TIME('18:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (25899460182, 4, TO_DATE('2023-09-03', 'YY-MM-DD'), TO_TIME('10:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-03', 'YY-MM-DD'), TO_TIME('14:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (93730174067, 5, TO_DATE('2023-09-04', 'YY-MM-DD'), TO_TIME('16:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-04', 'YY-MM-DD'), TO_TIME('20:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (12345678901, 1, TO_DATE('2023-09-01', 'YY-MM-DD'), TO_TIME('08:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-01', 'YY-MM-DD'), TO_TIME('12:00:00', 'HH24:MI:SS');
INSERT INTO ARSA_aloca (matricula, idSetor, dtEntrada, hrEntrada, dtSaida, hrSaida) VALUES (12345678901, 3, TO_DATE('2023-09-07', 'YY-MM-DD'), TO_TIME('14:00:00', 'HH24:MI:SS'), TO_DATE('2023-09-07', 'YY-MM-DD'), TO_TIME('18:00:00', 'HH24:MI:SS');

-- Inserindo tuplas na tabela possui
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (84759274938, 1);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (99224601858, 2);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (74090167373, 3);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (68811749899, 3);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (93730174067, 5);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (93730174067, 6);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (98765432100, 4);
INSERT INTO ARSA_possui (matricula, idEspecialidade) VALUES (12345678901, 1);