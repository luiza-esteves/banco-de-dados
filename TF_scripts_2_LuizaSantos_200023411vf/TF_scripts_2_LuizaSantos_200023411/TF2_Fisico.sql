-- ﻿-------  << trabalhoFinal_2 >>  --------
--
--  	SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 28/08/2022
-- Autor(es) ..............: Letícia Karla S. R de Araújo e Luíza Esteves dos Santos 
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: trabalhoFinal_2
--
--
-- PROJETO => 01 Base de Dados
--         => 39 Tabelas
--
-- ---------------------------------

create database trabalhoFinal_2;
use trabalhoFinal_2;

create table if not exists EMPRESA (
	cnpjEmpresa varchar(14) not null,
    nomeEmpresa varchar(100) not null,
    naturezaJuridica varchar(15) null,
    situacaoCadastral varchar(20) not null,
    rua varchar(40) not null,
    numero integer not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100) null,
    email varchar(80) not null,
    
    CONSTRAINT PK_cnpjEmpresa primary key(cnpjEmpresa)
);

create table if not exists telefoneEmpresa(
	cnpjEmpresa varchar(14) not null,
	ddd varchar(3) not null,
    numero bigint(9) not null,
    
	CONSTRAINT FK_cnpjEmpresa FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa)
);

create table if not exists PROJETO(
	idProjeto bigint(5) auto_increment not null,
    nomeProjeto varchar(60) not null,
    descricao varchar(100) not null,
    localRealizacao varchar(60) not null,
    idTipoServico varchar(40) not null,

	CONSTRAINT PK_idProjeto primary key (idProjeto)
);

create table if not exists CURSO(
	idCurso bigint(5) auto_increment not null,
    nomeCurso varchar(40) not null,
    dataRealizacaoCurso date not null,
    descricao varchar(100) not null,

	CONSTRAINT PK_idCurso primary key (idCurso)
);

create table if not exists TIPO_EXAME(
	idTipoExame bigint(5) auto_increment not null,
    nomeExame varchar(50) not null,
	descricaoExame varchar(100) not null,
    
	CONSTRAINT PK_idTipoExame primary key (idTipoExame)
);

create table if not exists CLIENTE(
	idCliente varchar(14) not null,
    nomeCliente varchar(30) not null,
    rua varchar(40) not null,
    numero integer not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100) null,
    formaPagamento varchar(30) not null,
    
	CONSTRAINT PK_idCliente primary key (idCliente)
);

create table if not exists clienteTelefone(
	idCliente varchar(14) not null,
	ddd integer not null,
    numero bigint(9) not null,
    
	CONSTRAINT FK_idCliente FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente)
);

create table if not exists EXAME(
	idExame bigint(5) auto_increment not null,
    dataExane date not null,
    idTipoExame bigint(5) not null,
	resultadoExame varchar(30) not null,
    
	CONSTRAINT PK_idExame primary key (idExame)
);

create table if not exists SETOR(
	idSetor bigint(5) auto_increment not null,
    nomeSetor varchar(80) not null,
    descricao varchar(100) not null,

	CONSTRAINT PK_idSetor primary key (idSetor)
);

create table if not exists INFORMACOES_BANCARIAS(
	idInformacoesBancarias bigint(5) not null,
    numeroBanco integer,
    numeroConta bigint(10),
	digitoUnico integer,
    numeroAgencia integer,
    tipoRecebedor varchar(20),
    cpf varchar(11),
    cnpj varchar(14),
    
	CONSTRAINT PK_idInformacoesBancarias primary key (idInformacoesBancarias)
);

 create table if not exists FUNCIONARIO_INFORMACOES(
	idInformacoes bigint(5) auto_increment not null,
    nomeCompleto varchar(20) not null,
    numeroRg bigint(7) not null,
    estadoRg varchar(2) not null,
    rua varchar(40) not null,
    numero integer not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100) null,
	numeroTituloEleitor bigint(15) not null,
    escolaridade varchar(15) not null,
    
	CONSTRAINT PK_idInformacoes primary key(idInformacoes)
 );

create table if not exists PROPOSTA(
	idProposta bigint(5) auto_increment not null,
    valorProposta decimal not null,
    ferramentaPrototipos varchar(30) not null,
    
    CONSTRAINT PK_idProposta primary key(idProposta)
);

create table if not exists FORNECEDOR(
	cnpjFornecedor varchar(14) not null,
    nomeFornecedor varchar(40) not null,
    naturezaJuridica varchar(15) null,
    situacaoCadastral varchar(20) not null,
	rua varchar(40) not null,
    numero integer not null,
    bairro varchar(60) not null,
    cidade varchar(40) not null,
    estado varchar(30) not null,
    cep bigint(8) not null,
    complemento varchar(100) null,

	CONSTRAINT PK_cnpjFornecedor primary key(cnpjFornecedor)
);

create table if not exists telefoneFornecedor(
	cnpjFornecedor varchar(14) not null,
    ddd varchar(3) not null,
    numero bigint(9) not null,
    
	CONSTRAINT FK_cnpjFornecedor FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
);

create table if not exists emailFornecedor(
	cnpjFornecedor varchar(14) not null,
	email varchar(80) not null,
    
	CONSTRAINT FK_emailCnpjFornecedor FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
);

create table if not exists idInformacoesBancariasFornecedor(
	cnpjFornecedor varchar(14) not null,
	idInformacoesBancarias bigint(5) not null,
    
	CONSTRAINT FK_infomacoesBancariasCnpjFornecedor FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor),
    CONSTRAINT FK_idInformacoesBancarias FOREIGN KEY (idInformacoesBancarias) REFERENCES INFORMACOES_BANCARIAS (idInformacoesBancarias)
);

create table if not exists MATERIAL(
	idMaterial bigint(5) auto_increment not null,
    nomeMaterial varchar(30) not null,
    descricao varchar(100) not null,
    valorMaterial decimal not null,
    quantidadeMaterial decimal not null,
    cnpjFornecedor varchar(14) not null,
    
    CONSTRAINT PK_idMaterial primary key(idMaterial),
    CONSTRAINT FK_materialCnpjFornecedor FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
);

create table if not exists TIPO_SERVICO(
	idTipoServico bigint(5) auto_increment not null,
    quantidadeMaterialServico decimal not null,
    descricao varchar(100) not null,
    
    CONSTRAINT PK_idTipoServico primary key(idTipoServico)
);

create table if not exists material_tipoServico(
	idTipoServico bigint(5)  not null,
    idMaterial bigint(5)  not null,
    
    CONSTRAINT FK_idTipoServico FOREIGN KEY (idTipoServico) REFERENCES TIPO_SERVICO (idTipoServico),
    CONSTRAINT FK_idMaterial FOREIGN KEY (idMaterial) REFERENCES MATERIAL (idMaterial)
);

create table if not exists fornecedor_tipoServico(
	idTipoServico bigint(5)  not null,
    cnpjFornecedor  varchar(14)  not null,
    
    CONSTRAINT FK_fonecedorTipoServico FOREIGN KEY (idTipoServico) REFERENCES TIPO_SERVICO (idTipoServico),
    CONSTRAINT FK_tipoServicoCnpjFornecedor  FOREIGN KEY (cnpjFornecedor ) REFERENCES FORNECEDOR (cnpjFornecedor )
);

 create table if not exists FUNCIONARIO(
	idFuncionario varchar(14) not null,
    idInformacoes bigint(5) not null,
    idExame bigint(5) not null,
    idSetor bigint(5) not null,
    regimeTrabalho varchar(20) not null,
    
    CONSTRAINT PK_idFuncionario primary key(idFuncionario),
    CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes),
    CONSTRAINT FK_idExame FOREIGN KEY (idExame) REFERENCES EXAME (idExame),
    CONSTRAINT FK_idSetor FOREIGN KEY (idSetor) REFERENCES SETOR (idSetor)
 );

create table if not exists funcionarioEmpresa(
	cnpjEmpresa varchar(14) not null,
    idFuncionario varchar(14) not null,

	CONSTRAINT FK_cnpjEmpresa FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario)
);

create table if not exists projetoEmpresa(
	cnpjEmpresa varchar(14) not null,
    idProjeto bigint(5) not null,
    
	CONSTRAINT FK_projetoCnpjEmpresa FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT FK_idProjeto FOREIGN KEY (idProjeto) REFERENCES PROJETO (idProjeto)
);

create table if not exists FLUXO_CAIXA(
	idFluxoCaixa bigint(5) auto_increment not null,
	cnpjEmpresa varchar(14) not null,
    dataFluxoCaixa date not null,
    
    CONSTRAINT PK_idFluxoCaixa primary key(idFluxoCaixa),
    CONSTRAINT FK_fluxoCaixaCnpjEmpresa FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa)
);

 create table if not exists FLUXO_CAIXA_CONTAS_RECEBER(
	idFluxoCaixa bigint(5) not null,
    idCliente varchar(14) not null,
    idProjeto bigint(5) not null,
    dataFluxoCaixaContasReceber date not null,
    
    CONSTRAINT FK_contasReceberFluxoCaixa FOREIGN KEY (idFluxoCaixa) REFERENCES FLUXO_CAIXA (idFluxoCaixa),
    CONSTRAINT FK_idCliente FOREIGN KEY (idCliente) REFERENCES CLIENTE (idCliente),
    CONSTRAINT FK_idProjeto FOREIGN KEY (idProjeto) REFERENCES PROJETO (idProjeto)
 );

create table if not exists FLUXO_CAIXA_CONTAS_PAGAR(
	idFluxoCaixa bigint(5) not null,
    valorPagamento decimal not null,
    nomeConta varchar(60) not null,
    descricaoConta varchar(100) not null,
    formaPagamento varchar(30) not null,
    dataFluxoCaixaContasPagar date not null,
    
    CONSTRAINT FK_idFluxoCaixa FOREIGN KEY (idFluxoCaixa) REFERENCES FLUXO_CAIXA (idFluxoCaixa)
 );
 
 
create table if not exists idInformacoesBancariasFuncionario(
	idFuncionario varchar(14) not null,
	idInformacoesBancarias bigint(5) not null,
    
    CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario),
    CONSTRAINT FK_idInformacoesBancarias FOREIGN KEY (idInformacoesBancarias) REFERENCES INFORMACOES_BANCARIAS (idInformacoesBancarias)
);
 
create table if not exists idCursoFuncionario(
	idFuncionario varchar(14) not null,
	idCurso bigint(5) not null,
    
    CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario),
    CONSTRAINT FK_idCurso FOREIGN KEY (idCurso) REFERENCES CURSO (idCurso)
 );
 
 create table if not exists idProjetoFuncionario(
	idFuncionario varchar(14) not null,
	idProjeto bigint(5) not null,
    
    CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario),
    CONSTRAINT FK_idProjeto FOREIGN KEY (idProjeto) REFERENCES PROJETO (idProjeto)
 );
 
 create table if not exists FUNCIONARIO_OFFSHORE(
	idFuncionario varchar(14) not null,
    tipoFuncionarioOffshore varchar(30) not null,
    funcao varchar(30) not null,
 
	CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario)
 );
 
  create table if not exists FUNCIONARIO_ONSHORE(
	idFuncionario varchar(14) not null,
    tipoFuncionarioOnshore varchar(30) not null,
    funcao varchar(30) not null,
 
	CONSTRAINT FK_idFuncionario FOREIGN KEY (idFuncionario) REFERENCES FUNCIONARIO (idFuncionario)
 );
 
 create table if not exists telefoneFuncionario(
	idInformacoes bigint(5) not null,
	ddd varchar(3) not null,
    numero bigint(9) not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

 create table if not exists emailFuncionario(
	idInformacoes bigint(5) not null,
	email varchar(80) not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists FUNCIONARIO_INFORMACOES_CONTRATUAIS(
	idInformacoes bigint(5) not null,
	salarioInicial decimal not null,
    salario decimal not null,
    gratificacao decimal not null,
    valeAlimentacao decimal not null,
    valeTransporte decimal not null,
    numeroCtps bigint(14) not null,
    inscricaoPis bigint(14) not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists decimoTerceiroFuncionario(
	idInformacoes bigint(5) not null,
	anoDecimoTerceiro varchar(4) not null,
    valorDecimoTerceiro decimal not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists inssFuncionario(
	idInformacoes bigint(5) not null,
	dataInss date not null,
    valorInss decimal not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists fgtsFuncionario(
	idInformacoes bigint(5) not null,
	dataFgts date not null,
    valorFgts decimal not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists feriasFuncionario(
	idInformacoes bigint(5) not null,
	anoFerias varchar(4) not null,
    valorFerias decimal not null,
    
	CONSTRAINT FK_idInformacoes FOREIGN KEY (idInformacoes) REFERENCES FUNCIONARIO_INFORMACOES (idInformacoes)
);

create table if not exists propostaProjeto(
	idProjeto bigint(5) not null,
	idProposta bigint(5) not null,
    
	CONSTRAINT FK_idProjeto FOREIGN KEY (idProjeto) REFERENCES PROJETO (idProjeto)
);