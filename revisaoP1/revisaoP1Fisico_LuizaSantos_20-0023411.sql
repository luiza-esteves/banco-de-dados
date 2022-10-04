-- --------  << revisaoP1 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 06/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: revisaoP1
--
-- PROJETO => 01 Base de Dados
--         => 03 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS luizasantos;

use luizasantos;

CREATE TABLE PESSOA (
    idPessoa INT NOT NULL AUTO_INCREMENT,
    nomeCompleto VARCHAR(50) NOT NULL,
    dtNasc DATE NOT NULL,
    situacaoSaude ENUM('S','T','C','F') NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    estado VARCHAR(2),
    gestante  ENUM('S','N','C'),
    tipoSangue ENUM('A','B','AB','O'),
    fatorRh ENUM('+','-'),
    
    CONSTRAINT PESSOA_PK PRIMARY KEY (idPessoa)
)ENGINE = InnoDB AUTO_INCREMENT = 100;

CREATE TABLE SINTOMA (
    idSintoma INT NOT NULL AUTO_INCREMENT,
    dsSintoma VARCHAR(30) NOT NULL,
    
    CONSTRAINT SINTOMA_PK PRIMARY KEY (idSintoma)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE sente (
    idPessoa INT NOT NULL,
    idSintoma INT NOT NULL,
    
    CONSTRAINT sente_PESSOA_FK FOREIGN KEY (idPessoa)
        REFERENCES PESSOA(idPessoa),
	CONSTRAINT sente_SINTOMA_FK FOREIGN KEY (idSintoma)
        REFERENCES SINTOMA(idSintoma)
)ENGINE = InnoDB;