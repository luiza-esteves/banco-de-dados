-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 22/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula9extra1;


-- INSERCOES


INSERT INTO ESTADO (sigla, nome) VALUES
	('GO', 'Goiás'),
    ('RJ', 'Rio de Janeiro'),
    ('SP', 'São Paulo'),
    ('MG', 'Minas Gerais'),
    ('DF', 'Distrito Federal');
    
INSERT INTO CIDADE (nome, sigla, habitantes) VALUES
	('Luziânia','GO', 1327834),
    ('Gama','GO', 986492),
    ('Rio de Janeiro','RJ', 2364545),
    ('Unaí','MG', 657829),
    ('Brasília','DF', 10987656),
    ('São Paulo','SP', 10567843),
    ('Belo Horizonte','MG', 6784980);

	