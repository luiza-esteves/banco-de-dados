-- --------  << aula6exer4Evolucao3 >>  ----------
--
--                    SCRIPT DE CONSULTAS (DML)
--
-- Data Criacao ...........: 11/08/2022
-- Autor(es) ..............: Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4Evolucao3
--
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula6exer4Evolucao3;

-- CONSULTAS

select empregado.matricula, empregado.nome, empregado.salario,dtNasc,empregado.sexo,
		empregado.bairro,empregado.rua,empregado.numero,departamento.numeroDept,departamento.nomeDept
	from empregado join departamento join associado 
	on departamento.numeroDept=associado.numeroDept and empregado.matricula =associado.matricula 
    where departamento.numeroDept=1;

SELECT * FROM EMPREGADO
	WHERE dtNasc BETWEEN '1982-10-24' AND '2022-08-03';
    

SELECT DEPENDENTE.nome, dependente.dtNasc, dependente.sexo, dependente.ligacao, empregado.matricula, empregado.nome
 FROM EMPREGADO join DEPENDENTE join possui
 on empregado.matricula=possui.matricula and possui.codDependente =DEPENDENTE.codDependente 
 WHERE DEPENDENTE.nome LIKE 'Renata%';