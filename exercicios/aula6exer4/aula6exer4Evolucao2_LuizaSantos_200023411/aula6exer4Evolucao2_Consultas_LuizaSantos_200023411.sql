-- --------  << aula6exer4 >>  ----------
--
--                    SCRIPT DE POPULACAO (DDL)
--
-- Data Criacao ...........: 01/08/2022
-- Autor(es) ..............: Gabriel Mariano da Silva
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4
--

-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula6exer4;
select empregado.matriculaEmp, pessoa.nome, empregado.salario,dtNasc,pessoa.sexo,empregado.matrSupervisor,empregado.numeroDept,empregado.bairro,empregado.rua,empregado.numero
from empregado join departamento join pessoa on departamento.numeroDept=empregado.numeroDept and pessoa.idPessoa=empregado.idPessoa where departamento.nomeDept='Departamento de Finanças';

select empregado.matriculaEmp, pessoa.nome, empregado.salario,dtNasc,pessoa.sexo,empregado.matrSupervisor,empregado.numeroDept,empregado.bairro,empregado.rua,empregado.numero
from empregado join pessoa 
on pessoa.idPessoa=empregado.idPessoa 
where pessoa.dtNasc between '1980-01-01' and '2010-01-01';