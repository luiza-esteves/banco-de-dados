-- --------  << TF_2C_luizasantos >>  ----------
--
--      SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 31/08/2022
-- Autor(es) ..............: Gustavo Martins Ribeiro, Kayro Cesar Silva Machado, Kess Jhones Gomes Tavares, Júlio César Martins França, Letícia Karla Araújo, Luíza Esteves dos Santos
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_2C_luizasantos
--
-- Últimas alterações
-- 12/09/2022 =>  Criada entidade PAGAMENTO
--            =>  Criada entidade SERVICO
--            =>  Criada entidade TIPOSERVICO
--            =>  Entidade Item ITEM nome para  MATERIAL
--            =>  Criada entidade FORNECEDOR
--            =>  Criado relacionamento CONTRATANTE ORCAMENTO
--            =>  Excluido atributo valorServico da Entidade ORCAMENTO
--            =>  Incluiu atributo dtOrcamento da Entidade ORCAMENTO
--            =>  dataPagamento na ENTIDADE SALARIO mudou para dtPagamento

--  PROJETO => 01 Base de dados
-- 	        => 31 Tabelas
--          => 05 perfís
--          => 05 usuários
-- ---------------------------------------------------------
DROP DATABASE IF EXISTS TF_2C_luizasantos;
CREATE DATABASE IF NOT EXISTS TF_2C_luizasantos;

USE TF_2C_luizasantos;

-- 1 (ok)
CREATE TABLE CONTRATANTE (
    idContratante INT auto_increment not null,
    nome VARCHAR(150) not null,
    estado VARCHAR(2) not null,
    complemento VARCHAR(100),
    rua VARCHAR(100) not null,
    numero INT not null,
    cep DECIMAL(8) not null,
    cidade VARCHAR(100) not null,
    CONSTRAINT CONTRATANTE_PK PRIMARY KEY (idContratante)
)engine = InnoDB auto_increment = 1;

-- 2 (ok)
CREATE TABLE EMPRESA (
    cnpjEmpresa DECIMAL(14) not null,
    nome VARCHAR(150) not null,
    numero INT not null,
    estado VARCHAR(2) not null,
    rua VARCHAR(100) not null,
    cep DECIMAL(8) not null,
    complemento VARCHAR(100),
    cidade VARCHAR(100) not null,
    CONSTRAINT EMPRESA_PK PRIMARY KEY (cnpjEmpresa)
)engine = InnoDB;

-- 3 (ok)
CREATE TABLE ORCAMENTO (
    idOrcamento INT auto_increment not null,
    diasValidade decimal(5) not null,
    mesesGarantia decimal(4) not null, 
    formaPagamento VARCHAR(200) not null,
    diasExecucao decimal(5) not null,
    dtOrcamento date not null,
    observacoes VARCHAR(500),
    cnpjEmpresa DECIMAL(14) not null,
    idContratante int not null,
    CONSTRAINT ORCAMENTO_PK PRIMARY KEY (idOrcamento),
    CONSTRAINT ORCAMENTO_EMPRESA_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT ORCAMENTO_CONTRATANTE_FK FOREIGN KEY (idContratante) REFERENCES CONTRATANTE (idContratante) 
)engine = InnoDB auto_increment = 1;

-- 4 (ok)
CREATE TABLE MATERIAL (
    idMaterial INT auto_increment not null,
    descricaoMaterial VARCHAR(500) not null,
    qtdMaterial DECIMAL(6) not null,
    valorMaterial DECIMAL(9,3) not null,
    dtCompraMaterial date not null,
    idOrcamento INT not null,
    cnpjEmpresa DECIMAL(14) not null,
    CONSTRAINT ITEM_PK PRIMARY KEY (idMaterial),
    CONSTRAINT ITEM_EMPRESA_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT ITEM_ORCAMENTO_FK FOREIGN KEY (idOrcamento) REFERENCES ORCAMENTO (idOrcamento)
)engine = InnoDB auto_increment = 1;

-- 5 (ok)
CREATE TABLE ESPECIALIDADE (
	idEspecialidade int auto_increment not null,
    nomeEspecialidade varchar(50) not null,
    CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade),
    CONSTRAINT ESPECIALIDADE_idEspecialidade_UK UNIQUE KEY (nomeEspecialidade)
)engine = InnoDB auto_increment = 1;

-- 6 (ok)
CREATE TABLE FUNCIONARIO (
    cpf DECIMAL(11) not null,
    rg DECIMAL(14) not null,
    nome VARCHAR(150) not null,
    sexo ENUM('M','F') not null,
    dtNascimento DATE not null,
    email VARCHAR(100) not null,
    cargo VARCHAR(100) not null,
    cep DECIMAL(8) not null,
    complemento VARCHAR(100),
    estado VARCHAR(2) not null,
    rua VARCHAR(100) not null,
    cidade VARCHAR(100) not null,
    numero INT not null,
    dtAdmissao DATE not null,
    salarioContratacao DECIMAL(7,2) not null,    
    numero_pis DECIMAL(11) not null,
    cargaHoraria DECIMAL(2) not null,
    cnpjEmpresa DECIMAL(14) not null,
    idEspecialidade int not null,
	CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (cpf),
	CONSTRAINT FUNCIONARIO_EMPRESA_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT FUNCIONARIO_ESPECIALIDADE_FK FOREIGN KEY (idEspecialidade) REFERENCES ESPECIALIDADE (idEspecialidade)
)engine = InnoDB;

-- 7 (ok)
CREATE TABLE PROFISSIONAL (
    cpf DECIMAL(11) not null,
    dataEspecializacao DATE not null,
    CONSTRAINT PROFISSIONAL_FUNCIONARIO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf),
    CONSTRAINT PROFISSIONAL_PK PRIMARY KEY (cpf)
)engine = InnoDB;

-- 8 (ok)
CREATE TABLE SALARIO (
    idSalario INT auto_increment not null,
    dtPagamento DATE not null,
    valor DECIMAL(7,2) not null,
    formaPagamento VARCHAR(100) not null,
    gratificacao DECIMAL(7,2),
    cpf DECIMAL(11) not null,
    CONSTRAINT SALARIO_PK PRIMARY KEY (idSalario),
    CONSTRAINT SLARIO_EMPREGADO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf)
)engine = InnoDB auto_increment = 1;


-- 9 (ok)
CREATE TABLE TIPO_CURSO (
    idTipoCurso INT auto_increment not null,
    tipoCurso VARCHAR(150) not null,
    CONSTRAINT TIPO_CURSO_PK PRIMARY KEY (idTipoCurso),
    CONSTRAINT TIPO_CURSO_tipoCurso_UK UNIQUE KEY (tipoCurso)
)engine = InnoDB auto_increment = 1;

-- 10 (ok)
CREATE TABLE CURSO (
    idCurso INT auto_increment not null,
    nomeCurso VARCHAR(100) not null,
    cargaHoraria INT not null,    
    modalidade VARCHAR(100) not null,
    validadeCurso DATE not null,    
    dsCurso VARCHAR(500) not null,
    valorCurso DECIMAL(7,2) not null,
    dtCurso DATE not null,
    idTipoCurso INT not null,
    CONSTRAINT CURSO_PK PRIMARY KEY (idCurso),
    CONSTRAINT CURSO_TIPO_CURSO_FK FOREIGN KEY (idTipoCurso) REFERENCES TIPO_CURSO (idTipoCurso)
)engine = InnoDB;

-- 11 (ok)
CREATE TABLE TIPO_EXAME (
    idTipoExame INT auto_increment not null,
    tipoExame VARCHAR(150) not null,
    CONSTRAINT TIPO_EXAME PRIMARY KEY (idTipoExame),
    CONSTRAINT TIPO_EXAME_tipoExame_UK UNIQUE KEY (tipoExame)
)engine = InnoDB auto_increment = 1;

-- 12 (ok)
CREATE TABLE EXAME (
    idExame INT auto_increment not null,
    dtExame DATE not null,
    dsExame VARCHAR(500) not null,
    numeroCrm DECIMAL(6) not null,
    estadoCrm CHAR(2) not null,
    valorExame DECIMAL(7,2) not null,
    validadeExame DATE not null,
    idTipoExame INT not null,
    CONSTRAINT EXAME_PK PRIMARY KEY (idExame),
    CONSTRAINT EXAME_TIPO_EXAME_FK FOREIGN KEY (idTipoExame) REFERENCES TIPO_EXAME (idTipoExame)
)engine = InnoDB auto_increment = 1;

-- 13 (ok)
CREATE TABLE CONTRATO (
    idContrato INT auto_increment not null,
    objetoContrato TEXT not null,
    dtContrato DATE not null,    
    obrigacoesContratado TEXT not null,
    obrigacoesContratante TEXT not null,
	condicoesPagamento TEXT not null,
    prestacaoServicos TEXT not null,
    prazo TEXT not null,
    valorContrato DECIMAL(9,3) not null,
    idContratante INT not null,
    cnpjEmpresa DECIMAL(14) not null,
    idOrcamento INT not null,
    CONSTRAINT CONTRATO_FK PRIMARY KEY (idContrato),
    CONSTRAINT CONTRATO_CONTRATANTE_FK FOREIGN KEY (idContratante) REFERENCES CONTRATANTE (idContratante),
    CONSTRAINT CONTRATO_EMPRESA_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa),
    CONSTRAINT CONTRATO_ORCAMENTO_FK FOREIGN KEY (idOrcamento) REFERENCES ORCAMENTO (idOrcamento)
)engine = InnoDB auto_increment = 1;

-- 14 (ok)
CREATE TABLE PESSOA_FISICA (
    cpf DECIMAL(11) not null,
    dtNascimento DATE not null,
    sexo ENUM('M','F') not null,
    idContratante INT not null,
    CONSTRAINT PESSOA_FISICA_cpf_UK UNIQUE KEY (cpf),
    CONSTRAINT PESSOA_FISICA_CONTRATANTE_FK FOREIGN KEY (idContratante) REFERENCES CONTRATANTE (idContratante)
)engine = InnoDB;

-- 15 (ok)
CREATE TABLE PESSOA_JURIDICA (
    cnpjPJ DECIMAL(14) not null,
    idContratante INT not null,
    CONSTRAINT PESSOA_JURIDICA_cnpj_UK UNIQUE KEY (cnpjPJ),
    CONSTRAINT PESSOA_JURIDICA_CONTRATANTE_FK FOREIGN KEY (idContratante) REFERENCES CONTRATANTE (idContratante)
)engine = InnoDB;

-- 16 (ok)
CREATE TABLE DEPENDENTE (
    idDependente INT auto_increment not null,
    nomeDependente VARCHAR(150) not null,
    relacaoDependencia VARCHAR(100) not null,
    cpf DECIMAL(11) not null,
    CONSTRAINT DEPENDENTE_PK PRIMARY KEY (idDependente),
    CONSTRAINT DEPENDENTE_FUNCIONARIO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf)
)engine = InnoDB auto_increment = 1;

-- 17 (ok)
CREATE TABLE ENCARREGADO (
    cnpjEncarregado DECIMAL(14) not null,
    nome VARCHAR(150) not null,
    remuneracao DECIMAL(8,3) not null,
    cnpjEmpresa DECIMAL(14) not null,
    CONSTRAINT ENCARREGADO_PK PRIMARY KEY (cnpjEncarregado),
    CONSTRAINT ENCARREGADO_EMPRESA_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa)
)engine = InnoDB;

-- 18 (ok)
CREATE TABLE OBRA (
    idObra INT auto_increment not null,
    area DECIMAL not null,
    rua VARCHAR(100) not null,
    complemento VARCHAR(100),
    numero INT not null,
    estado VARCHAR(2) not null,
    cidade VARCHAR(100) not null,
    cep DECIMAL(8) not null,
    cnpjEncarregado DECIMAL(14) not null,
    idContrato INT not null,
    CONSTRAINT OBRA_PK PRIMARY KEY (idObra),
    CONSTRAINT OBRA_ENCARREGADO_FK FOREIGN KEY (cnpjEncarregado) REFERENCES ENCARREGADO (cnpjEncarregado),
    CONSTRAINT OBRA_CONTRATO_FK FOREIGN KEY (idContrato) REFERENCES CONTRATO (idContrato)
)engine = InnoDB auto_increment = 1;

-- 19 (ok)
CREATE TABLE telefoneContratante (
    telefoneContratante DECIMAL(11) not null,
    idContratante INT not null,
    CONSTRAINT telefoneContratante_CONTRATANTE_FK FOREIGN KEY (idContratante) REFERENCES CONTRATANTE (idContratante)
)engine = InnoDB;

-- 20 (ok)
CREATE TABLE telefoneFuncionario (
    telefoneFuncionario DECIMAL(11) not null,
    cpf DECIMAL(11) not null,
    CONSTRAINT telefoneFuncionario_FUNCIONARIO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf) 
)engine = InnoDB;

-- 21 (ok)
CREATE TABLE telefoneEmpresa (
    telefoneEmpresa DECIMAL(11) not null,
    cnpjEmpresa DECIMAL(14) not null,
	CONSTRAINT telefoneEmpresa_FUNCIONARIO_FK FOREIGN KEY (cnpjEmpresa) REFERENCES EMPRESA (cnpjEmpresa) 
)engine = InnoDB;

-- 22 (ok)
CREATE TABLE participa (
    cpf DECIMAL(11) not null,
    idCurso INT not null,
    CONSTRAINT participa_FUNCIONARIO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf),
    CONSTRAINT participa_CURSO_FK FOREIGN KEY (idCurso) REFERENCES CURSO (idCurso)
)engine = InnoDB;

-- 23 (ok)
CREATE TABLE faz (
    idExame INT not null,
    cpf DECIMAL(11) not null,
    CONSTRAINT faz_EXAME_FK FOREIGN KEY (idExame) REFERENCES EXAME (idExame),
    CONSTRAINT faz_FUNCIONARIO_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf)
)engine = InnoDB;

-- 24 (ok)
CREATE TABLE trabalha (
    idObra INT not null,
    cpf decimal(11) not null,
    CONSTRAINT trabalha_OBRA_FK FOREIGN KEY (idObra) REFERENCES OBRA (idObra),
    CONSTRAINT trabalha_PROFISSIONAL_FK FOREIGN KEY (cpf) REFERENCES FUNCIONARIO (cpf)
)engine = InnoDB;

-- 25 (ok)
CREATE TABLE PAGAMENTO (
    idPagamento int auto_increment not null,
    dataHoraPagamento timestamp not null,
    valorPagamento decimal(9,3) not null,
    formaPagamento varchar(30) not null,
    idContrato INT not null,
    CONSTRAINT PAGAMENTO_PK PRIMARY KEY (idPagamento),
    CONSTRAINT PAGAMENTO_CONTRATO_FK FOREIGN KEY (idContrato) REFERENCES CONTRATO (idContrato)
)engine = InnoDB auto_increment = 1;

-- 26 (ok)
CREATE TABLE TIPO_SERVICO (
    idTipoServico INT auto_increment,
    nomeTipoServico varchar(100) not null,
    CONSTRAINT TIPO_SERVICO PRIMARY KEY (idTipoServico),
    CONSTRAINT TIPO_SERVICO_nomeTipoServico_UK UNIQUE KEY (nomeTipoServico)
)engine = InnoDB auto_increment = 1;

-- 27 (ok)
CREATE TABLE SERVICO (
    idServico INT auto_increment,
    valorServico decimal(9,3) not null,
    descricaoServico varchar(500) not null,
    idTipoServico INT not null,
    CONSTRAINT SERVICO_PK PRIMARY KEY (idServico),
    CONSTRAINT SERVICO_TIPO_SERVICO_FK FOREIGN KEY (idTipoServico) REFERENCES TIPO_SERVICO (idTipoServico)
)engine = InnoDB auto_increment = 1;
 
 -- 28 (ok)
CREATE TABLE FORNECEDOR (
    cnpjFornecedor decimal(14) not null,
    nomeFornecedor varchar(100) not null,
    cidade varchar(100) not null,
    estado char(2) not null,
    numero int not null,
    rua varchar(100) not null,
    complemento varchar(100) not null,
    cep decimal(8) not null,
    CONSTRAINT FORNECEDOR_PK PRIMARY KEY (cnpjFornecedor)
)engine = InnoDB;

-- 29 (ok)
CREATE TABLE composto (
    idOrcamento INT not null,
    idServico INT not null,
    CONSTRAINT composto_ORCAMENTO_FK FOREIGN KEY (idOrcamento) REFERENCES ORCAMENTO (idOrcamento),
    CONSTRAINT composto_SERVICO_FK FOREIGN KEY (idServico) REFERENCES SERVICO (idServico)
)engine = InnoDB;

-- 30 (ok)
CREATE TABLE fornece (
    idMaterial int not null,
    cnpjFornecedor decimal(14) not null,
    CONSTRAINT fornece_MATERIAL_FK FOREIGN KEY (idMaterial) REFERENCES MATERIAL (idMaterial),
    CONSTRAINT fornece_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)engine = InnoDB;

-- 31 (ok)
CREATE TABLE telefoneFornecedor (
    telefoneFornecedor decimal(11) not null,
    cnpjFornecedor decimal(14) not null,
    CONSTRAINT telefoneFornecedor_FORNECEDOR_FK FOREIGN KEY (cnpjFornecedor) REFERENCES FORNECEDOR (cnpjFornecedor)
)engine = InnoDB;

