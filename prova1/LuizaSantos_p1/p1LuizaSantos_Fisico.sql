-- ﻿-------  << LuizaSantos >>  --------
--
--  	SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 09/09/2022
-- Autor(es) ..............: Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: LuizaSantos
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--
-- ---------------------------------------------------------

create database if not exists LuizaSantos;
use LuizaSantos;

CREATE TABLE ELEITOR (
    tituloEleitor BIGINT(12) ,
    nome VARCHAR(80),
    dtNasc DATE,
    
	CONSTRAINT ELEITOR_PK primary key (tituloEleitor)
)Engine=InnoDB;

CREATE TABLE VOTO (
    dtEleicao DATE NOT NULL,
    tituloEleitor BIGINT(12) NOT NULL,
   CONSTRAINT VOTO_PK PRIMARY KEY (dtEleicao, tituloEleitor),
   CONSTRAINT VOTO_ELEITOR_FK  foreign key (tituloEleitor) references ELEITOR(tituloEleitor)
)Engine=InnoDB;

CREATE TABLE REGULARIZANDO (
    justificativa VARCHAR(200) NOT NULL,
    dtEleicao DATE NOT NULL,
    tituloEleitor BIGINT(12) NOT NULL,
    
    CONSTRAINT REGULARIZANDO_PK PRIMARY KEY (dtEleicao),
    CONSTRAINT REGULARIZANDO_VOTO_FK  foreign key (dtEleicao,tituloEleitor) references VOTO(dtEleicao,tituloEleitor)
)Engine=InnoDB;

CREATE TABLE PARTICIPANDO (
    numeroCandidato INT(2) NOT NULL,
    dtEleicao DATE NOT NULL,
	tituloEleitor BIGINT(12) NOT NULL,
    
    CONSTRAINT PARTICIPANDO_PK PRIMARY KEY (dtEleicao),
    CONSTRAINT PARTICIPANDO_VOTO_FK  foreign key (dtEleicao,tituloEleitor) references VOTO(dtEleicao,tituloEleitor)
)Engine=InnoDB;

CREATE TABLE CANDIDATO (
    numeroCandidato INT(2) NOT NULL,
    dtEleicao DATE NOT NULL,
    tituloEleitor BIGINT(12) NOT NULL,
    
    CONSTRAINT CANDIDATO_PK PRIMARY KEY (numeroCandidato, tituloEleitor),
    CONSTRAINT CANDIDATO_ELEITOR_FK  foreign key (tituloEleitor) references ELEITOR(tituloEleitor),
    CONSTRAINT CANDIDATO_UK UNIQUE KEY (tituloEleitor,dtEleicao)
)Engine=InnoDB;

CREATE TABLE recebe (
    numeroCandidato INT(2) NOT NULL,
    tituloEleitorCandidato BIGINT(12) NOT NULL,
    tituloEleitorParticipando BIGINT(12) NOT NULL,
    dtEleicao DATE NOT NULL,
    
    CONSTRAINT recebe_CANDIDATO_FK  foreign key (numeroCandidato,tituloEleitorCandidato) 
		references CANDIDATO(numeroCandidato,tituloEleitor),
    CONSTRAINT recebe_PARTICIPANDO_FK  foreign key (tituloEleitorParticipando,dtEleicao) 
		references CANDIDATO(tituloEleitor,dtEleicao)
)Engine=InnoDB;
 