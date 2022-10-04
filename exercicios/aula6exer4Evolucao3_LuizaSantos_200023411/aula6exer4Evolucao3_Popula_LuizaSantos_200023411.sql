-- --------  << aula6exer4Evolucao3 >>  ----------
--
--                    SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 11/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4Evolucao3
--
-- Ultimas Alteracoes
--   02/08/2022 => Ajustando padrao exigido no script.
-- 	 03/08/2022 => Mudando nome da base de dados
-- 				=> Foi alterada a contagem de tabelas do projeto para 07 tabelas 
-- 				=> Foi alterado o atributo nomeEmp para apenas nome na tabela GERENTE
-- 				=> Foi alterado o atributo matriculaEmp para matriculaGerente na tabela DEPARTAMENTO
-- 				=> Foi alterado o atributo nomeEmp para apenas nome na tabela EMPREGADO
-- 				=> Foi alterado o atributo matriculaEmp para matriculaEmpregado na tabela DEPENDENTE
-- 				=> Foi alterado o atributo matriculaEmp para matriculaEmpregado na tabela atua
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula6exer4Evolucao3;


-- INSERCOES

INSERT INTO EMPREGADO (nome, salario, dtNasc, sexo, rua, numero, bairro) VALUES
	('Jair Moreira', 7123.50, '1982-10-23', 'M', 'Rua Ipanema', 123, 'Setor Leste'),
    ('Marta Silva', 12456.45, '2000-11-15', 'F', 'Rua Imperial', 321, 'Setor Sul'),
    ('Maria Portela', 5400.00, '1999-01-01', 'F', 'Rua dos Castelos', 12, 'Setor Sul'),
    ('Renato Teixeira', 5200.00, '1990-03-10', 'M', 'Rua da Madeira', 13, 'Setor Sul');
    
INSERT INTO GERENTE (matricula, dataInicio) VALUES
	(1,'2022-01-15'),
    (2, '2022-02-16'),
    (3, '2022-03-17'),
    (4, '2022-04-18');

INSERT INTO DEPARTAMENTO (nomeDept, matricula) VALUES
	('Departamento de Finanças', 1),
    ('Departamento de Inovação', 2),
    ('Departamento de Estoque', 3),
    ('Departamento de Transporte', 4);
    
INSERT INTO LOCALIZACAO (dsLocal, numeroDept) VALUES
	('GAMA DF, no Predio Azul', 1),
    ('ALTO ALVORADA GO, no Predio Vermelho', 2),
    ('RIO VERDE GO, no Predio Branco', 3),
    ('Retiro GO, no Predio Verde', 4);
    

    
INSERT INTO DEPENDENTE (nome, dtNasc, sexo, ligacao) VALUES
	('Marcelo Moreira', '2000-09-25', 'M', 'Filho'),
    ('Gabriela Silva', '2022-07-25', 'F', 'Filha'),
    ('Luisa Portela', '2022-07-13', 'F', 'Filha'),
	('Renata Reixeira', '1992-09-14', 'F', 'Esposa');
        
INSERT INTO PROJETO (nomeProj, dsLocal, numeroDept) VALUES
	('Projeto de Controle Fiscal', 'avenida goiás', 1),
    ('Projeto de Rebranding da Logo', 'escritório de marketing', 2),
    ('Projeto de Organização do Estoque', 'depósito da empresa Compac', 3),
    ('Projeto de Otimização das Rotas', 'Escritório de vias estaduais', 4);

INSERT INTO atua (matricula, numeroProj, horasSemanais) VALUES
	(1, 1, 30),
    (2, 2, 35),
    (3, 3, 40),
    (4, 4, 10);
    
INSERT INTO POSSUI(matricula,codDependente)VALUES
(1,1),
(2,2),
(3,3),
(4,4);

INSERT INTO associado(matricula,numeroDept)VALUES
(1,2),
(2,1),
(3,4),
(4,3);