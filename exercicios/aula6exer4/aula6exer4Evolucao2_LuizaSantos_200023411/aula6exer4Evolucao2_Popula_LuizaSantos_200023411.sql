-- --------  << aula6exer4 >>  ----------
--
--                    SCRIPT DE POPULACAO (DDL)
--
-- Data Criacao ...........: 01/08/2022
-- Autor(es) ..............: Gabriel Mariano da Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4
--
-- Ultimas Alteracoes
--   03/08/2022 => Alteração na ordem e valores inseridos
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula6exer4;


-- INSERCOES
INSERT INTO PESSOA(nome,dtNasc,sexo) VALUES
	('Maria Machado','1990-10-10', 'F'),
    ('Luíza Moares','1966-11-21', 'F'),
    ('Claudio Maciel','1999-08-09', 'M'),
    ('Mariana Pimentel','1999-08-09', 'F'),
    ('Anthony Azevedo','1988-08-09', 'M'),
    ('Marcos Santana','1996-08-09', 'M'),
    ('Mariele Sousa','2001-08-09', 'F'),
    ('Ana Santos','2000-01-13', 'F');
    
    INSERT INTO DEPARTAMENTO (nomeDept) VALUES
	('Departamento de Finanças'),
    ('Departamento de Inovação'),
    ('Departamento de Estoque'),
    ('Departamento de Transporte');
    
INSERT INTO EMPREGADO(salario, rua, numero, bairro,idPessoa,matrSupervisor,numeroDept) VALUES
	(1200.23,'rua 2',3,'São Gonçalo',1,null,1),
    (1670.23,'Joaquim Alfredo',45,'São Pedro',2,1,2),
    (1480.23,'Antônio Matos',22,'Evangelino Meireles',3,2,3),
    (1940.23,'rua 34',1,'Santa Luzia',4,3,4);
   
    
INSERT INTO LOCALIZACAO (latitude, longitude, descricaoLocal, numeroDept) VALUES
	('16S', '48W', 'GAMA DF, no Predio Azul', 1),
    ('17S', '48W', 'ALTO ALVORADA GO, no Predio Vermelho', 2),
    ('18S', '50W', 'RIO VERDE GO, no Predio Branco', 3),
    ('19S', '50W', 'Retiro GO, no Predio Verde', 4);
    
    
INSERT INTO PROJETO (nomeProj,numeroDept,codLocalizacao) VALUES
	('Projeto de Controle Fiscal', 1,1),
    ('Projeto de Rebranding da Logo', 2,2),
    ('Projeto de Organização do Estoque',3,3),
    ('Projeto de Otimização das Rotas', 4,4);
    
INSERT INTO gerencia (numeroDept, matriculaEmpSuperv, dataInicGerencia) VALUES
	(1,1,'2017-08-09'),
    (2,2,'2022-08-01'),
    (3,3,'2020-10-07'),
    (4,4,'2021-02-13');

    
INSERT INTO DEPENDENTE (dependencia, matriculaEmp,idPessoa) VALUES
	('Filha', 1,7),
    ('Filho', 2,5),
    ('Filho',3,6),
	('Esposa',4,8);
        
INSERT INTO atua (matriculaEmp, numeroProj, horasSemanais) VALUES
	(1, 1, 30),
    (2, 2, 35),
    (3, 3, 40),
    (4, 4, 10);
    