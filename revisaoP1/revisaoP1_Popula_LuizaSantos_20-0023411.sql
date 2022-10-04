-- --------  << revisaoP1 >>  ----------
--
--                    SCRIPT DE POPULACAO (DDL)
--
-- Data Criacao ...........: 06/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: luizasantos
--
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--
-- ---------------------------------------------------------
-- BASE DE DADOS
USE luizasantos;

-- INSERCOES
INSERT INTO PESSOA(nomeCompleto,dtNasc,situacaoSaude,sexo,estado,gestante,tipoSangue,fatorRh) VALUES
	('Maria Clara Machado','1990-10-10', 'S','F','GO','S',NULL,NULL),
    ('Carlos Eduardo Ribeiro','1970-11-16', 'T','M',NULL,NULL,'A','+'),
    ('Ana Vitória da Silva','2000-04-02', 'C','F','SP','N',NULL,NULL);
    
INSERT INTO SINTOMA(dsSintoma) VALUES
('Dor de cabeça'),
('Dor no corpo'),
('Sem Nenhum Sintoma');

INSERT INTO sente(idPessoa,idSintoma) VALUES
(101,1),
(100,1),
(102,3);
    
    
    