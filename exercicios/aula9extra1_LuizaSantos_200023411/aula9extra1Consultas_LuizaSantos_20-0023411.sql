-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE CONSULTAS (DML)
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

-- CONSULTAS

select sigla, nome from ESTADO where sigla="SP" or sigla="DF";

select nome, sigla from CIDADE where sigla="RJ" or sigla="DF" or sigla="GO";
 
 select CIDADE.nome, ESTADO.nome, ESTADO.sigla from CIDADE join ESTADO on CIDADE.sigla=ESTADO.sigla where CIDADE.codigo=1;

select ESTADO.nome, ESTADO.sigla, CIDADE.nome, CIDADE.habitantes, max(CIDADE.codigo) from CIDADE join ESTADO 
on CIDADE.sigla=ESTADO.sigla 