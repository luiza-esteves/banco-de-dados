-- ﻿-------  << TF_2C_luizasantos >>  --------
--
--  	SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 10/09/2022
-- Autor(es) ..............: Letícia Karla S. R de Araújo e Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
--
--
-- PROJETO => 01 Base de Dados
--         => 02 Roles
-- ---------------------------------

create role if not exists 'administrador';
grant all privileges on * . * to 'administrador';

create role if not exists 'Funcionario_Onshore';
grant select, insert on * . * to 'Funcionario_Onshore';
