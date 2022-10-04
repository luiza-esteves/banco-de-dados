-- ﻿-------  << LuizaSantos >>  --------
--
--  	SCRIPT DE POPULAÇÃO (DML)
--
-- Data Criacao ...........: 09/09/2022
-- Autor(es) ..............: Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: LuizaSantos
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--
--
-- ---------------------------------------------------------

use LuizaSantos;
 
INSERT INTO ELEITOR(tituloEleitor, nome, dtNasc) values
	(123456789019,'Maria Clara Ribeiro', '2000-10-09'),
    (876945678923,'José Alberto dos Santos Rodrigues', '2000-10-09');
    
INSERT INTO VOTO(dtEleicao, tituloEleitor) values
	('2020-10-09',123456789019),
    ('2021-08-09',876945678923),
    ('2021-08-09',123456789019),
    ('2020-10-09',876945678923);
    
INSERT INTO REGULARIZANDO(justificativa, dtEleicao,tituloEleitor) values
	('Estava em outro estado viajando a trabalho','2020-10-09',123456789019),
    ('Fiquei doente e precisei me hospitalizar','2021-08-09',876945678923);
     

INSERT INTO PARTICIPANDO(numeroCandidato, dtEleicao,tituloEleitor) values
	(11,'2020-10-09',876945678923),
    (27,'2021-08-09',123456789019);
    

INSERT INTO CANDIDATO(numeroCandidato, dtEleicao,tituloEleitor) values
	(11,'2020-10-09',876945678923),
    (27,'2021-08-09',123456789019);
    
INSERT INTO recebe(numeroCandidato, tituloEleitorCandidato,tituloEleitorParticipando,dtEleicao) values
	(11,876945678923,876945678923,'2020-10-09'),
    (27,123456789019,123456789019,'2021-08-09');
    
    