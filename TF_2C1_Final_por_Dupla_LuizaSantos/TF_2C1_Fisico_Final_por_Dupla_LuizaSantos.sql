-- ﻿-------  << TF_2C_luizasantos >>  --------
--
--  	SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 28/08/2022
-- Autor(es) ..............: Letícia Karla S. R de Araújo e Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
--
-- Ultimas Alteracoes
--   09/09/2022 => Inserção de duas tabelas: atrelado e dependente
--              => Alteração do tipos de atributos bigint(5) para int
--              => Adição de atributos na tabela projeto
--              => Adição da tabela tipo_curso
--
-- PROJETO => 01 Base de Dados
--         => 42 Tabelas
-- ---------------------------------

create database if not exists TF_2C_luizasantos;
use TF_2C_luizasantos;

-- Start: Extras funcionário

create table if not exists TIPO_CURSO(
	codCurso int not null auto_increment,
    descricaoCurso varchar(100) not null,
    
    CONSTRAINT TIPO_CURSO_PK primary key (codCurso)
)Engine=InnoDB auto_increment =1;

create table if not exists CURSO(
	codCertificado bigint(10) auto_increment not null,
    dataCurso date not null,
    codCurso int not null,

	CONSTRAINT CURSO_PK primary key (codCertificado),
    CONSTRAINT CURSO_TIPO_CURSO_FK foreign key (codCurso) references TIPO_CURSO(codCurso)
)Engine=InnoDB;

create table if not exists SETOR(
	codSetor int auto_increment not null,
    nomeSetor varchar(100) not null,
    descricao varchar(400) not null,

	CONSTRAINT SETOR_PK primary key (codSetor)
)Engine=InnoDB;
-- End: Extras funcionário

-- Start: Informação Bancária
create table if not exists INFORMACAO_BANCARIA(
    numeroBanco int,
    numeroConta bigint(10),
	digitoUnico int,
    numeroAgencia int,
    
	CONSTRAINT INFORMACAO_BANCARIA_PK primary key (numeroBanco, numeroConta)
)Engine=InnoDB;
-- End: Informação Bancária

-- Start: Cliente
create table if not exists CLIENTE(
	cpfCnpjCliente varchar(14) not null,
    nomeCliente varchar(60) not null,
    rua varchar(40) not null,
    numero int not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100),
    formaPagamento varchar(30) not null,
    
	CONSTRAINT CLIENTE_PK primary key (cpfCnpjCliente)
)Engine=InnoDB;

create table if not exists clienteTelefone(
	cpfCnpjCliente varchar(14) not null,
	ddd int not null,
    numero bigint(9) not null,
    
	CONSTRAINT clienteTelefone_CLIENTE_FK FOREIGN KEY (cpfCnpjCliente) REFERENCES CLIENTE (cpfCnpjCliente)
)Engine=InnoDB;

create table if not exists clienteEmail(
	cpfCnpjCliente varchar(14) not null,
	email varchar(80) not null,
    
	CONSTRAINT clienteEmail_CLIENTE_FK FOREIGN KEY (cpfCnpjCliente) REFERENCES CLIENTE (cpfCnpjCliente)
)Engine=InnoDB;
-- End: Cliente

-- Start: Proposta
create table if not exists PROPOSTA(
	codProposta int auto_increment not null,
    cpfCnpjCliente varchar(14) not null,
    valorProposta decimal not null,
    ferramentaPrototipos varchar(30) not null,
    
    CONSTRAINT PROPOSTA_PK primary key(codProposta),
    CONSTRAINT PROPOSTA_CLIENTE_FK FOREIGN KEY (cpfCnpjCliente) REFERENCES CLIENTE (cpfCnpjCliente)
)Engine=InnoDB;
-- End: Proposta

-- Start: Fornecedor
create table if not exists FORNECEDOR(
	cnpjFornecedor varchar(14) not null,
    nomeFornecedor varchar(40) not null,
    naturezaJuridica varchar(15) null,
    situacaoCadastral varchar(20) not null,
	rua varchar(40) not null,
    numero int not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100),

	CONSTRAINT FORNECEDOR_PK primary key(cnpjFornecedor)
)Engine=InnoDB;

create table if not exists telefoneFornecedor(
	cnpjFornecedor varchar(14) not null,
    ddd varchar(3) not null,
    numero bigint(9) not null,
    
	CONSTRAINT telefoneFornecedor_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)Engine=InnoDB;

create table if not exists emailFornecedor(
	cnpjFornecedor varchar(14) not null,
	email varchar(80) not null,
    
    CONSTRAINT emailFornecedor_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)Engine=InnoDB;

create table if not exists informacaoBancariaFornecedor(
	cnpjFornecedor varchar(14) not null,
	numeroBanco int not null,
    numeroConta bigint(10) not null,
    
	CONSTRAINT informacaoBancariaFornecedor_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor),
    CONSTRAINT informacaoBancariaFornecedor_INFORMACAO_BANCARIA_FK FOREIGN KEY (numeroBanco, numeroConta) REFERENCES INFORMACAO_BANCARIA (numeroBanco, numeroConta)
)Engine=InnoDB;
-- End: Fornecedor

-- Start: Material
create table if not exists MATERIAL(
	codMaterial int auto_increment not null,
    cnpjFornecedor varchar(14) not null,
    nomeMaterial varchar(200) not null,
    descricao varchar(500) not null,
    valorMaterial decimal not null,
    quantidadeMaterial decimal not null,
    
    CONSTRAINT MATERIAL_PK primary key(codMaterial),
    CONSTRAINT MATERIAL_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)Engine=InnoDB auto_increment=1;
-- End: Material

-- Start: Tipo serviço
create table if not exists TIPO_SERVICO(
	codTipoServico int auto_increment not null,
    quantidadeMaterialServico decimal not null,
    descricao varchar(100) not null,
    
    CONSTRAINT TIPO_SERVICO_PK primary key(codTipoServico)
)Engine=InnoDB auto_increment=1;

create table if not exists materialTipoServico(
	codTipoServico int not null,
	codMaterial int not null,
    
	CONSTRAINT materialTipoServico_TIPO_SERVICO_FK FOREIGN KEY (codTipoServico) REFERENCES TIPO_SERVICO (codTipoServico),
    CONSTRAINT materialTipoServico_MATERIAL_FK FOREIGN KEY (codMaterial) REFERENCES MATERIAL (codMaterial)
)Engine=InnoDB;

create table if not exists cnpjFornecedorTipoServico(
	codTipoServico int not null,
	cnpjFornecedor varchar(14) not null,
    
	CONSTRAINT cnpjFornecedorTipoServico_TIPO_SERVICO_FK FOREIGN KEY (codTipoServico) REFERENCES TIPO_SERVICO (codTipoServico),
    CONSTRAINT cnpjFornecedorTipoServico_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)Engine=InnoDB;
-- End: Tipo serviço


-- Start: Funcionário
 create table if not exists FUNCIONARIO_INFORMACOES_TRABALHISTA(
	idInformacaoTrabalhista int auto_increment not null,
    salarioInicial decimal not null,
    salario decimal not null,
    gratificacao decimal not null,
    valeAlimentacao decimal not null,
    valeTransporte decimal not null,
    numeroCtps varchar(14) not null,
    inscricaoPis varchar(14) not null,
    
	CONSTRAINT FUNCIONARIO_INFORMACOES_TRABALHISTA_PK primary key(idInformacaoTrabalhista)
 )Engine=InnoDB auto_increment=1;

 create table if not exists FUNCIONARIO(
	cpfCnpjFuncionario varchar(14) not null,
    nomeCompleto varchar(40) not null,
    numeroRg varchar(14) not null,
    estadoRg varchar(2) not null,
    numeroTituloEleitor varchar(14) not null,
    escolaridade varchar(100) not null,
    regimeTrabalho varchar(20) not null,
    rua varchar(40) not null,
    numero int not null,
    bairro varchar(40) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100) null,
    funcao varchar(60) not null,
    codSetor int not null,
    idInformacaoTrabalhista int not null,
    
    CONSTRAINT FUNCIONARIO primary key(cpfCnpjFuncionario),
    CONSTRAINT FUNCIONARIO_FUNCIONARIO_INFORMACOES_TRABALHISTA_FK FOREIGN KEY (idInformacaoTrabalhista) REFERENCES FUNCIONARIO_INFORMACOES_TRABALHISTA (idInformacaoTrabalhista),
    CONSTRAINT FUNCIONARIO_SETOR_FK FOREIGN KEY (codSetor) REFERENCES SETOR (codSetor)
 )Engine=InnoDB;
 
 CREATE TABLE DEPENDENTE (
	codDependente INT AUTO_INCREMENT NOT NULL,
    nomeDependente VARCHAR(100) NOT NULL,
    tipoDependencia VARCHAR(50) NOT NULL,
    CONSTRAINT DEPENDENTE primary key(codDependente)
    
)Engine=InnoDB auto_increment=1;

CREATE TABLE atrelado (
    cpfCnpjFuncionario VARCHAR(14) NOT NULL,
    codDependente INT NOT NULL,
    CONSTRAINT atrelado_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT atrelado_DEPENDENTE_FK FOREIGN KEY (codDependente) REFERENCES DEPENDENTE (codDependente)
)Engine=InnoDB;
 
 create table if not exists emailFuncionario(
	cpfCnpjFuncionario varchar(14) not null,
    email varchar(80) not null,

    CONSTRAINT emailFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario)
)Engine=InnoDB;

create table if not exists telefoneFuncionario(
	cpfCnpjFuncionario varchar(14) not null,
    ddd int not null,
	numero bigint(9) not null,

    CONSTRAINT telefoneFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario)
)Engine=InnoDB;

CREATE TABLE IF NOT EXISTS informacaoBancariaFuncionario (
    cpfCnpjFuncionario VARCHAR(14) NOT NULL,
    numeroBanco INT NOT NULL,
    numeroConta BIGINT(10) NOT NULL,
    CONSTRAINT informacaoBancariaFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario)
        REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT informacaoBancariaFuncionario_INFORMACAO_BANCARIA_FK FOREIGN KEY (numeroBanco , numeroConta)
        REFERENCES INFORMACAO_BANCARIA (numeroBanco , numeroConta)
)  ENGINE=INNODB;

create table if not exists cursoFuncionario(
	cpfCnpjFuncionario varchar(14) not null,
    codCurso int not null,

    CONSTRAINT cursoFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT cursoFuncionario_CURSO_FK FOREIGN KEY (codCurso) REFERENCES CURSO (codCurso)
)Engine=InnoDB;

-- Start: Projeto
create table if not exists PROJETO(
	codProjeto int auto_increment not null,
    codTipoServico int not null,
    nomeProjeto varchar(60) not null,
    descricao varchar(100) not null,
    localRealizacao varchar(60) not null,
	prazoProjetoDias INT,
    valorFinalProjeto DECIMAL(10,2),
    dtInicio DATE,
    statusProjeto ENUM('Em andamento', 'Finalizado','Cancelado'),
	CONSTRAINT PROJETO_PK primary key (codProjeto),
     CONSTRAINT PROJETO_TIPO_SERVICO_FK FOREIGN KEY (codTipoServico)
		REFERENCES TIPO_SERVICO (codTipoServico)
)Engine=InnoDB auto_increment=1;

create table if not exists propostaProjeto(
	codProjeto int not null,
    codProposta int not null,

    CONSTRAINT propostaProjeto_PROJETO_FK FOREIGN KEY (codProjeto) REFERENCES PROJETO (codProjeto),
    CONSTRAINT propostaProjeto_PROPOSTA_FK FOREIGN KEY (codProposta) REFERENCES PROPOSTA (codProposta)
)Engine=InnoDB;
-- End: Projeto

create table if not exists projetoFuncionario(
	cpfCnpjFuncionario varchar(14) not null,
    codProjeto int not null,

    CONSTRAINT projetoFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT projetoFuncionario_PROJETO_FK FOREIGN KEY (codProjeto) REFERENCES PROJETO (codProjeto)
)Engine=InnoDB;

create table if not exists pratica(
	cpfCnpjFuncionario varchar(14),
    codCertificado bigint(10),
    
    CONSTRAINT pratica_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT pratica_CURSO_FK FOREIGN KEY (codCertificado) REFERENCES CURSO(codCertificado)
)Engine=InnoDB;
-- End: Funcionário

-- Start: Exame
create table if not exists TIPO_EXAME(
	codTipoExame int auto_increment not null,
    nomeExame varchar(50) not null,
	descricaoExame varchar(400) not null,
    
	CONSTRAINT TIPO_EXAME_PK primary key (codTipoExame)
)Engine=InnoDB auto_increment=1;

create table if not exists EXAME(
	codExame int auto_increment not null,
    dataExame date not null,
    codTipoExame int not null,
	resultadoExame varchar(30) not null,
    
	CONSTRAINT EXAME_PK primary key (codExame),
    CONSTRAINT EXAME_TIPO_EXAME_FK FOREIGN KEY (codTipoExame) REFERENCES TIPO_EXAME (codTipoExame)
    
)Engine=InnoDB auto_increment=1;
-- End: Exame

create table precisa(
	codExame int not null,
    cpfCnpjFuncionario varchar(14) not null,
    
     CONSTRAINT precisa_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT precisa_EXAME_FK FOREIGN KEY (codExame) REFERENCES EXAME (codExame)
)Engine=InnoDB;

-- Start: Informações Trabalhistas
create table if not exists decimoTerceiro(
	idInformacaoTrabalhista int not null,
    anoDecimoTerceiro varchar(4) not null,
    valorDecimoTerceiro decimal not null,

    CONSTRAINT decimoTerceiro_FUNCIONARIO_INFORMACOES_TRABALHISTA_FK FOREIGN KEY (idInformacaoTrabalhista) REFERENCES FUNCIONARIO_INFORMACOES_TRABALHISTA (idInformacaoTrabalhista)
)Engine=InnoDB;

create table if not exists inss(
	idInformacaoTrabalhista int not null,
    dataInss date not null,
    valorInss decimal not null,

    CONSTRAINT inss_FUNCIONARIO_INFORMACOES_TRABALHISTA_FK FOREIGN KEY (idInformacaoTrabalhista) REFERENCES FUNCIONARIO_INFORMACOES_TRABALHISTA (idInformacaoTrabalhista)
)Engine=InnoDB;

create table if not exists fgts(
	idInformacaoTrabalhista int not null,
    dataFgts date not null,
    valorFgts decimal not null,

    CONSTRAINT fgts_FUNCIONARIO_INFORMACOES_TRABALHISTA_FK FOREIGN KEY (idInformacaoTrabalhista) REFERENCES FUNCIONARIO_INFORMACOES_TRABALHISTA (idInformacaoTrabalhista)
)Engine=InnoDB;

create table if not exists ferias(
	idInformacaoTrabalhista int not null,
    anoFerias varchar(4) not null,
    valorFerias decimal not null,

    CONSTRAINT ferias_FUNCIONARIO_INFORMACOES_TRABALHISTA_FK FOREIGN KEY (idInformacaoTrabalhista) REFERENCES FUNCIONARIO_INFORMACOES_TRABALHISTA (idInformacaoTrabalhista)
)Engine=InnoDB;
-- End: Informações Trabalhistas

-- Start: Tipos Funcionários
create table if not exists FUNCIONARIO_OFFSHORE(
	cpfCnpjFuncionario varchar(14) not null,
    tipoFuncionarioOffshore varchar(20) not null,
    valor int not null,
    tipoData varchar(30) not null,

    CONSTRAINT FUNCIONARIO_OFFSHORE_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT FUNCIONARIO_OFFSHORE_PK primary key(cpfCnpjFuncionario)
)Engine=InnoDB;

create table if not exists projetoFuncionarioOffshore(
	cpfCnpjFuncionario varchar(14) not null,
    codProjeto int not null,

    CONSTRAINT projetoFuncionarioOffshore_FUNCIONARIO_OFFSHORE_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO_OFFSHORE (cpfCnpjFuncionario),
    CONSTRAINT projetoFuncionarioOffshore_PROJETO_FK FOREIGN KEY (codProjeto) REFERENCES PROJETO (codProjeto)
)Engine=InnoDB;

create table if not exists FUNCIONARIO_ONSHORE(
	cpfCnpjFuncionario varchar(14) not null,
    tipoFuncionarioOnshore varchar(20) not null,
    tituloGraduacao varchar(40) null,

    CONSTRAINT FUNCIONARIO_ONSHORE_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    constraint FUNCIONARIO_ONSHORE_PK primary key(cpfCnpjFuncionario)
)Engine=InnoDB;

create table if not exists projetoFuncionarioOnshore(
	cpfCnpjFuncionario varchar(14) not null,
    codProjeto int not null,

    CONSTRAINT projetoFuncionarioOnshore_FUNCIONARIO_ONSHORE_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO_ONSHORE (cpfCnpjFuncionario),
    CONSTRAINT projetoFuncionarioOnshore_PROJETO_FK FOREIGN KEY (codProjeto) REFERENCES PROJETO (codProjeto)
)Engine=InnoDB;
-- End: Tipos Funcionários

-- Start: Imposto
create table if not exists IMPOSTO(
	codImposto int auto_increment not null,
    enumTipoImposto enum('ICMS', 'ISS', 'IRPJ', 'CSLL') not null,
    descricao varchar(100) not null,
	numeroBanco int not null,
    numeroConta bigint(10) not null,
    
    CONSTRAINT IMPOSTO_PK primary key(codImposto),
     CONSTRAINT IMPOSTO_INFORMACAO_BANCARIA_FK FOREIGN KEY (numeroBanco, numeroConta) REFERENCES INFORMACAO_BANCARIA (numeroBanco, numeroConta)
)Engine=InnoDB auto_increment=1;
-- End: Imposto

-- Start: Contas
create table if not exists CONTAS_RECEBER(
	idContasReceber int auto_increment not null,
    cpfCnpjCliente varchar(14) not null,
    codProjeto int not null,
    dataContaReceber date not null,
    
    CONSTRAINT CONTAS_RECEBER_PK primary key(idContasReceber),
    CONSTRAINT CONTAS_RECEBER_CLIENTE_FK FOREIGN KEY (cpfCnpjCliente) REFERENCES CLIENTE (cpfCnpjCliente),
    CONSTRAINT CONTAS_RECEBER_PROJETO_FK FOREIGN KEY (codProjeto) REFERENCES PROJETO (codProjeto)
)Engine=InnoDB auto_increment=1;

create table if not exists CONTAS_PAGAR(
	idContasPagar int auto_increment not null,
    cpfCnpjFuncionario varchar(14) null,
    cnpjFornecedor varchar(14) null,
    codImposto int null,
    enumTipoRecebedor enum('FUNCIONÁRIO', 'FORNECEDOR', 'IMPOSTO') not null,
    valorPagamento decimal not null,
    nomeConta varchar(60) not null,
    descricaoConta varchar(100) not null,
    formaPagamento varchar(15) not null,
    dataContaPagar date not null,
    
    CONSTRAINT CONTAS_PAGAR_PK primary key(idContasPagar),
    CONSTRAINT CONTAS_PAGAR_FUNCIONARIO_FK FOREIGN KEY (cpfCnpjFuncionario) REFERENCES FUNCIONARIO (cpfCnpjFuncionario),
    CONSTRAINT CONTAS_PAGAR_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor),
    CONSTRAINT CONTAS_PAGAR_IMPOSTO_FK FOREIGN KEY (codImposto) REFERENCES IMPOSTO (codImposto)
)Engine=InnoDB auto_increment=1;
