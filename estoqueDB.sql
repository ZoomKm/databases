drop database estoque;
CREATE DATABASE	estoque;
USE estoque;

CREATE TABLE `usuario` (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    tipo CHAR(6),
	nome VARCHAR(40),
	login VARCHAR(20),
	senha VARCHAR(20),
    CONSTRAINT tipo_usuario CHECK (tipo IN ('Parent', 'Child'))
);

CREATE TABLE `secaoAlimento` (
	idSecao INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecao VARCHAR(20) NOT NULL,
    tipoMedida VARCHAR(20) NOT NULL,
    obsSecaoAlimento VARCHAR(200),
    CONSTRAINT medida_alimento CHECK (tipoMedida IN ('peso', 'volume', 'unidade'))
);
CREATE TABLE `alimento` (
	idAlimento INT PRIMARY KEY AUTO_INCREMENT,
    secaoAlimento_idSecao INT NOT NULL,
	nomeAlimento VARCHAR(40) NOT NULL, 
    obsAlimento VARCHAR(200),
    FOREIGN KEY (secaoAlimento_idSecao) REFERENCES secaoAlimento(idSecao)
);
CREATE TABLE `estoqueAlimento` (
	idEstoqueAlimento INT PRIMARY KEY AUTO_INCREMENT,
    alimento_idAlimento INT NOT NULL,
    secaoAlimento_idSecao INT NOT NULL,
	peso FLOAT,
    volume FLOAT,
    unidade INT,
	dataValidade DATE NOT NULL,
	dataEstoque DATE NOT NULL,
	obsEstoqueAlimento VARCHAR(200),
    status CHAR(8) NOT NULL,
    CONSTRAINT status_valido CHECK (status IN ('Ativo', 'Excluido')),
    FOREIGN KEY (alimento_idAlimento) REFERENCES alimento(idAlimento),
    FOREIGN KEY (secaoAlimento_idSecao) REFERENCES secaoAlimento(idSecao)
);
CREATE TABLE `usuario_has_estoqueAlimento` (
	estoqueAlimento_idEstoqueAlimento INT NOT NULL,
    usuario_idUsuario INT NOT NULL,
	FOREIGN KEY (estoqueAlimento_idEstoqueAlimento) REFERENCES estoqueAlimento(idEstoqueAlimento),
    FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE `secaoLimpeza` (
	idSecao INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecao VARCHAR(20) NOT NULL,
    tipoMedida VARCHAR(20) NOT NULL,
    obsSecaoLimpeza VARCHAR(200),
    CONSTRAINT medida_limpeza CHECK (tipoMedida IN ('peso', 'volume', 'unidade'))
);
CREATE TABLE `limpeza` (
	idLimpeza INT PRIMARY KEY AUTO_INCREMENT,
    secaoLimpeza_idSecao INT NOT NULL,
	nomeLimpeza VARCHAR(40) NOT NULL, 
    obsLimpeza VARCHAR(200),
    FOREIGN KEY (secaoLimpeza_idSecao) REFERENCES secaoLimpeza(idSecao)
);
CREATE TABLE `estoqueLimpeza` (
	idEstoqueLimpeza INT PRIMARY KEY AUTO_INCREMENT,
    limpeza_idLimpeza INT NOT NULL,
    secaoLimpeza_idSecao INT NOT NULL,
	peso FLOAT,
    volume FLOAT,
    unidade INT,
	dataValidade DATE NOT NULL,
	dataEstoque DATE NOT NULL,
	obsEstoqueLimpeza VARCHAR(200),
    status CHAR(8) NOT NULL,
    CONSTRAINT status_limpeza CHECK (status IN ('Ativo', 'Excluido')),
    FOREIGN KEY (limpeza_idLimpeza) REFERENCES limpeza(idLimpeza),
    FOREIGN KEY (secaoLimpeza_idSecao) REFERENCES secaoLimpeza(idSecao)
);
CREATE TABLE `usuario_has_estoqueLimpeza` (
	estoqueLimpeza_idEstoqueLimpeza INT NOT NULL,
    usuario_idUsuario INT NOT NULL,
	FOREIGN KEY (estoqueLimpeza_idEstoqueLimpeza ) REFERENCES estoqueLimpeza(idEstoqueLimpeza),
    FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE `secaoPS` (
	idSecao INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecao VARCHAR(20) NOT NULL,
    tipoMedida VARCHAR(20) NOT NULL,
    obsSecaoPS VARCHAR(200),
    CONSTRAINT medida_PS CHECK (tipoMedida IN ('unidade'))
);
CREATE TABLE `PS` (
	idPS INT PRIMARY KEY AUTO_INCREMENT,
    secaoPS_idSecao INT NOT NULL,
	nomePS VARCHAR(40) NOT NULL, 
    obsPS VARCHAR(200),
    FOREIGN KEY (secaoPS_idSecao) REFERENCES secaoPS(idSecao)
);
CREATE TABLE `estoquePS` (
	idEstoquePS INT PRIMARY KEY AUTO_INCREMENT,
    PS_idPS INT NOT NULL,
    secaoPS_idSecao INT NOT NULL,
	peso FLOAT,
    volume FLOAT,
    unidade INT,
	dataValidade DATE NOT NULL,
	dataEstoque DATE NOT NULL,
	obsEstoquePS VARCHAR(200),
    status CHAR(8) NOT NULL,
    CONSTRAINT status_PS CHECK (status IN ('Ativo', 'Excluido')),
    FOREIGN KEY (PS_idPS) REFERENCES PS(idPS),
    FOREIGN KEY (secaoPS_idSecao) REFERENCES secaoPS(idSecao)
);
CREATE TABLE `usuario_has_estoquePS` (
	estoquePS_idEstoquePS INT NOT NULL,
    usuario_idUsuario INT NOT NULL,
	FOREIGN KEY (estoquePS_idEstoquePS) REFERENCES estoquePS(idEstoquePS),
    FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario)
);


CREATE TABLE `secaoBOB` (
	idSecao INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecao VARCHAR(20) NOT NULL,
    tipoMedida VARCHAR(20) NOT NULL,
    obsSecaoBOB VARCHAR(200),
    CONSTRAINT medida_BOB CHECK (tipoMedida IN ('unidade'))
);
CREATE TABLE `itemBOB` (
	idItemBOB INT PRIMARY KEY AUTO_INCREMENT,
    secaoBOB_idSecao INT NOT NULL,
	itemBOB VARCHAR(40) NOT NULL, 
    obsBOB VARCHAR(200),
    FOREIGN KEY (secaoBOB_idSecao) REFERENCES secaoBOB(idSecao)
);
CREATE TABLE `estoqueBOB` (
	idEstoqueBOB INT PRIMARY KEY AUTO_INCREMENT,
    itemBOB_idItemBOB INT NOT NULL,
    secaoBOB_idSecao INT NOT NULL,
	peso FLOAT,
    volume FLOAT,
    unidade INT,
	dataValidade DATE NOT NULL,
	dataEstoque DATE NOT NULL,
	obsEstoqueBOB VARCHAR(200),
    status CHAR(8) NOT NULL,
    CONSTRAINT status_BOB CHECK (status IN ('Ativo', 'Excluido')),
    FOREIGN KEY (itemBOB_idItemBOB) REFERENCES itemBOB(idItemBOB),
    FOREIGN KEY (secaoBOB_idSecao) REFERENCES secaoBOB(idSecao)
);
CREATE TABLE `usuario_has_estoqueBOB` (
	estoqueBOB_idEstoqueBOB INT NOT NULL,
    usuario_idUsuario INT NOT NULL,
	FOREIGN KEY (estoqueBOB_idEstoqueBOB) REFERENCES estoqueBOB(idEstoqueBOB),
    FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario)
);


