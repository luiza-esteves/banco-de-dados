-- ﻿-------  << TF_2C_luizasantos >>  --------
--
--  	SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 28/08/2022
-- Autor(es) ..............: Gustavo Martins Ribeiro, Kayro César Silva Machado, Kess Jhones Gomes Tavares, Júlio César Martins França, Letícia Karla Araújo, Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
--
-- Ultimas Alteracoes
--   09/09/2022 => Criação de duas roles.
--              => Criação de cinco usuários.
--
-- PROJETO => 01 Base de Dados
--         => 02 Roles
--         => 05 usuários
--         => 31 tabelas
-- ---------------------------------

create role if not exists 'Administrador';
grant all privileges on * . * to 'Administrador';

create role if not exists 'Proprietarios';
grant select, insert on * . * to 'Proprietarios';

create role if not exists 'Funcionarios';
grant select on * . * to 'Funcionarios';

CREATE USER 'Database_Administrador'@'localhost' IDENTIFIED BY 'admin';
grant 'administrador' TO 'Database_Administrador'@'localhost';

CREATE USER 'Proprietario_Empresa'@'localhost' IDENTIFIED BY 'propriet@ari0';
grant 'Proprietarios' TO 'Proprietario_Empresa'@'localhost';

CREATE USER 'Funcionario_Contabil'@'localhost' IDENTIFIED BY 'funci0n@ari0C0nt@bil';
grant 'Funcionarios' TO 'Funcionario_Contabil'@'localhost';

CREATE USER 'Funcionario_RH'@'localhost' IDENTIFIED BY 'funci0n@ari0Rh';
grant 'Funcionarios' TO 'Funcionario_RH'@'localhost';

CREATE USER 'Funcionario_Logistica'@'localhost' IDENTIFIED BY 'funci0n@ari0L0gistic@';
grant 'Funcionarios' TO 'Funcionario_Logistica'@'localhost';
