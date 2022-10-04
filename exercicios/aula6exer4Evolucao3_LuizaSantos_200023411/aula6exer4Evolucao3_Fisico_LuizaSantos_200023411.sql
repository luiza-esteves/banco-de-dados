-- --------  << aula6exer4Evolucao3 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 11/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4Evolucao3
--
-- Ultimas Alteracoes
--   02/08/2022 => Ajustando padrao exigido no script.
-- 	 03/08/2022 => Mudando nome da base de dados
-- 				=> Alterando o nome dos atributos matricula e nome da tabela GERENTE
-- 				=> Alterando o nome do atributo matriculaEmp para matriculaGerente na tabela DEPARTAMENTO 
-- 				=> Alterando o nome dos atributos matriculaEmp e nomeEmp para matriculaEmpregado e nome na tabela EMPREGADO
-- 				=> Alterando o nome do atributo matriculaEmp para matriculaEmpregado na tabela DEPENDENTE
-- 				=> Alterando o nome do atributo matriculaEmp para matriculaEmpregado na tabela atua
-- 				=> Foi alterada a contagem de tabelas do projeto para 07 tabelas
-- 	 11/08/2022 => Mudando nome da base de dados
-- 			 	=> Alteração de atributos
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE
    IF NOT EXISTS aula6exer4Evolucao3;

USE aula6exer4Evolucao3;

-- TABELAS

CREATE TABLE EMPREGADO(
	matricula INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(60) NOT NULL,
    sexo ENUM('m','f') NOT NULL,
    dtNasc DATE NOT NULL,
    salario DECIMAL(6.2) NOT NULL,
    bairro VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    rua VARCHAR(30) NOT NULL,
    
    CONSTRAINT EMPREGADO_PK PRIMARY KEY(matricula)
) ENGINE = InnoDB  AUTO_INCREMENT = 1; 

CREATE TABLE GERENTE(
	matricula INT UNIQUE NOT NULL,
    dataInicio DATE NOT NULL,
    CONSTRAINT GERENTE_FK FOREIGN KEY(matricula) REFERENCES EMPREGADO(matricula)
) ENGINE = InnoDB  AUTO_INCREMENT = 1;

CREATE TABLE DEPARTAMENTO (
	numeroDept			INT			NOT NULL	AUTO_INCREMENT,
	nomeDept			VARCHAR(30)	NOT NULL,
    matricula			INT	,
    CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY(numeroDept),
    CONSTRAINT DEPARTAMENTO_GERENTE_FK FOREIGN KEY(matricula) REFERENCES GERENTE(matricula)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE DEPENDENTE(
	codDependente INT NOT NULL	AUTO_INCREMENT,
	nome VARCHAR(60) not null,
    sexo ENUM('m','f') not null,
    dtNasc DATE not null,
    ligacao VARCHAR(20) not null,
    
    CONSTRAINT DEPENDENTE_PK PRIMARY KEY(codDependente)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE LOCALIZACAO(
	codLocal			INT	NOT NULL AUTO_INCREMENT,
    dsLocal				VARCHAR(40) 	NOT NULL,
    numeroDept			INT			NOT NULL,
    CONSTRAINT LOCALIZACAO_PK PRIMARY KEY(codLocal),
    CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY(numeroDept) REFERENCES DEPARTAMENTO(numeroDept)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE PROJETO(
	numeroProj			INT			NOT NULL AUTO_INCREMENT,
    nomeProj			VARCHAR(60) NOT NULL,
    dsLocal				VARCHAR(60) 	NOT NULL,
    numeroDept			INT			NOT NULL,
    CONSTRAINT PROJETO_PK PRIMARY KEY(numeroProj),
    CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY(numeroDept) REFERENCES DEPARTAMENTO(numeroDept)
) ENGINE = InnoDB AUTO_INCREMENT = 1;


CREATE TABLE atua(
	matricula	INT			NOT NULL,
    numeroProj			INT			NOT NULL,
    horasSemanais		INT			NOT NULL,
    CONSTRAINT atua_EMPREGADO_FK FOREIGN KEY(matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT atua_PROJETO_FK FOREIGN KEY(numeroProj) REFERENCES PROJETO(numeroProj)
) ENGINE = InnoDB;

CREATE TABLE possui (
    matricula INT NOT NULL,
    codDependente INT NOT NULL,
    CONSTRAINT possui_EMPREGADO_FK FOREIGN KEY(matricula) REFERENCES EMPREGADO(matricula),
     CONSTRAINT possui_DEPENDENTE_FK FOREIGN KEY(codDependente) REFERENCES DEPENDENTE(codDependente)
)ENGINE = InnoDB;

CREATE TABLE associado (
    numeroDept INT NOT NULL,
    matricula INT NOT NULL,
    
    CONSTRAINT associado_EMPREGADO_FK FOREIGN KEY(matricula) REFERENCES EMPREGADO(matricula),
    CONSTRAINT associado_DEPARTAMENTO_FK FOREIGN KEY(numeroDept) REFERENCES DEPARTAMENTO(numeroDept)
);