create database if not exists teste;
use teste;


CREATE TABLE PESSOA (
    idPessoa int auto_increment not null,
    nome varchar(6) not null,
    dtNasc date not null,
    sexo enum('m','f') not null,
    sitSaude enum('a','b','c') not null,
    
    constraint PESSOA_PK primary key(idPessoa)
)ENGINE=InnoDB auto_increment=1;

CREATE TABLE HOMEM (
    fatorRh enum('a','b','c') NOT NULL,
    tipoSangue int NOT NULL,
    idPessoa int NOT NULL,
    
    constraint HOMEM_PESSOA_FK foreign key(idPessoa) references
		PESSOA(idPessoa),
	constraint HOMEM_UK unique(idPessoa)
    
)ENGINE=InnoDB;

CREATE TABLE MULHER (
    gestante enum('s','n') NOT NULL,
    idPessoa int NOT NULL,
    sigla int NOT NULL,
    
    constraint MULHER_PESSOA_FK foreign key(idPessoa) references
		PESSOA(idPessoa),
    constraint MULHER_UK unique(idPessoa)
)ENGINE=InnoDB;

CREATE TABLE ESTADO (
    sigla int NOT NULL,
    nome varchar(30) UNIQUE NOT NULL,
    
    constraint ESTADO_PK primary key(sigla),
    constraint ESTADO_UK unique(nome)
)ENGINE=InnoDB;

CREATE TABLE SINTOMA (
    idSintoma int PRIMARY KEY NOT NULL,
    dsSintoma varchar(40) UNIQUE NOT NULL,
    
    constraint SINTOMA_PK primary key(idSintoma),
    constraint SINTOMA_UK unique(dsSintoma)
)ENGINE=InnoDB auto_increment=1;

CREATE TABLE sente (
    idSintoma int,
    idPessoa int,
    
    constraint sente_PESSOA_FK foreign key(idPessoa) references
		PESSOA(idPessoa),
	constraint sente_SINTOMA_FK foreign key(idSintoma) references
		SINTOMA(idSintoma)
)ENGINE=InnoDB;
    
    