-- --------  << aula6exer4 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 01/08/2022
-- Autor(es) ..............: Gabriel Mariano da Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4
--
-- Ultimas Alteracoes
--   03/08/2022 => Alteração das tabelas, inserção de novos atributos e relacionamentos
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS aula6exer4;

USE aula6exer4;

-- TABELAS

CREATE TABLE PESSOA (
	idPessoa INT NOT NULL auto_increment,
    nome VARCHAR(40) NOT NULL,
    dtNasc DATE NOT NULL,
    sexo CHAR(1) NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (idPessoa)
    
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE DEPARTAMENTO (
    nomeDept VARCHAR(30) NOT NULL,
    numeroDept INT NOT NULL auto_increment,
    
    CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (numeroDept)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE EMPREGADO (
    matriculaEmp INT NOT NULL auto_increment,
    salario DECIMAL(5.2) NOT NULL,
    rua VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    idPessoa INT NOT NULL,
    matrSupervisor INT,
    numeroDept INT NOT NULL,
    
    CONSTRAINT EMPREGRADO_PK PRIMARY KEY (matriculaEmp),
    CONSTRAINT EMPREGRADO_PESSOA_FK FOREIGN KEY (idPessoa)
        REFERENCES PESSOA(idPessoa),
	CONSTRAINT EMPREGRADO_DEPARTAMENTO_FK FOREIGN KEY (numeroDept)
        REFERENCES DEPARTAMENTO(numeroDept),
	CONSTRAINT EMPREGADO_AUTO_FK FOREIGN KEY (matrSupervisor)
        REFERENCES EMPREGADO(matriculaEmp)
)ENGINE = InnoDB AUTO_INCREMENT = 1;



CREATE TABLE LOCALIZACAO (
	codLocalizacao INT NOT NULL AUTO_INCREMENT,
    latitude VARCHAR(10) NOT NULL,
    longitude VARCHAR(10) NOT NULL,
    descricaoLocal VARCHAR(40) NOT NULL,
    numeroDept INT NOT NULL,
    CONSTRAINT LOCALIZACAO_PK PRIMARY KEY (codLocalizacao),
    CONSTRAINT LOCALIZACAO_DEPARTAMENTO_FK FOREIGN KEY (numeroDept)
        REFERENCES DEPARTAMENTO(numeroDept)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PROJETO (
    nomeProj VARCHAR(40)  NOT NULL,
    numeroProj INT NOT NULL auto_increment,
    numeroDept INT  NOT NULL,
    codLocalizacao INT  NOT NULL,
    
	CONSTRAINT PROJETO_PK PRIMARY KEY (numeroProj),
	CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (numeroDept)
        REFERENCES DEPARTAMENTO(numeroDept),
	CONSTRAINT PROJETO_LOCALIZACAO_FK FOREIGN KEY (codLocalizacao)
        REFERENCES LOCALIZACAO(codLocalizacao)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE DEPENDENTE (
    dependencia VARCHAR(20) NOT NULL,
    matriculaEmp INT NOT NULL,
	idPessoa INT NOT NULL,
    PRIMARY KEY (matriculaEmp, idPessoa),
    CONSTRAINT DEPENDENTE_PESSOA_FK FOREIGN KEY (idPessoa)
        REFERENCES PESSOA(idPessoa),
	CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY (matriculaEmp)
        REFERENCES EMPREGADO(matriculaEmp)
)ENGINE = InnoDB;

CREATE TABLE atua (
    matriculaEmp INT NOT NULL,
    numeroProj INT NOT NULL,
    horasSemanais INT NOT NULL,
    
    CONSTRAINT atua_EMPREGADO_FK FOREIGN KEY (matriculaEmp)
        REFERENCES EMPREGADO(matriculaEmp),
	CONSTRAINT atua_PROJETO_FK FOREIGN KEY (numeroProj)
        REFERENCES PROJETO(numeroProj)
)ENGINE = InnoDB;

CREATE TABLE gerencia (
	numeroDept INT NOT NULL,
    matriculaEmpSuperv INT NOT NULL,
    dataInicGerencia DATE NOT NULL,
    
    CONSTRAINT gerencia_EMPREGADO_FK FOREIGN KEY (matriculaEmpSuperv)
        REFERENCES EMPREGADO(matriculaEmp),
	CONSTRAINT gerencia_DEPARTAMENTO_FK FOREIGN KEY (numeroDept)
        REFERENCES DEPARTAMENTO(numeroDept)
)ENGINE = InnoDB;

CREATE TABLE possui (
    matriculaEmp INT NOT NULL,
    idPessoa INT NOT NULL,
    
    CONSTRAINT possui_EMPREGADO_FK FOREIGN KEY (matriculaEmp)
        REFERENCES EMPREGADO(matriculaEmp),
	CONSTRAINT possui_DEPENDENTE_FK FOREIGN KEY (idPessoa)
        REFERENCES DEPENDENTE(idPessoa)
)ENGINE = InnoDB;



