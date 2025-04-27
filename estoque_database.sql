CREATE DATABASE	`estoque_sos`;
USE `estoque_sos`;

CREATE TABLE `usuario` (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    tipoUsuario CHAR NOT NULL,
   	nome VARCHAR(40),
	email VARCHAR(70),
	senha VARCHAR(20),
    CONSTRAINT tipoUsuario CHECK (tipoUsuario IN ('P', 'C'))
);

CREATE TABLE `secaoProduto` (
	idSecaoProduto INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecaoProduto VARCHAR(20) NOT NULL,
    obsSecaoProduto VARCHAR(200)
);

CREATE TABLE `subSecao` (
	idSubSecao INT PRIMARY KEY AUTO_INCREMENT,
    secaoProduto_idSecaoProduto INT NOT NULL,
	nomeSubSecao VARCHAR(20) NOT NULL,
    obsSubSecao VARCHAR(200),
    FOREIGN KEY (secaoProduto_idSecaoProduto) REFERENCES secaoProduto(idSecaoProduto)
);

CREATE TABLE `produto` (
	idProduto INT PRIMARY KEY AUTO_INCREMENT,
    subSecao_idSubSecao INT NOT NULL,
	nomeProduto VARCHAR(40) NOT NULL,
    tipoMedida VARCHAR(7) NOT NULL,
    obsProduto VARCHAR(200),
    FOREIGN KEY (subSecao_idSubSecao) REFERENCES subSecao(idSubSecao),
    CONSTRAINT tipoMedida CHECK (tipoMedida IN ('peso', 'volume', 'unidade'))
);

CREATE TABLE `estoque` (
	idEstoque INT PRIMARY KEY AUTO_INCREMENT,
    produto_idProduto INT NOT NULL,
    peso FLOAT,
    volume FLOAT,
    unidade INT,
	dataValidade DATE NOT NULL,
	dataEstoque DATE NOT NULL,
	obsEstoque VARCHAR(200),
    status BOOLEAN NOT NULL,
    FOREIGN KEY (produto_idProduto) REFERENCES produto(idProduto)
);

CREATE TABLE `secaoDica` (
	idSecaoDica INT PRIMARY KEY AUTO_INCREMENT,
	nomeSecaoDica VARCHAR(20) NOT NULL,
    obsSecaoDica VARCHAR(400)
);

CREATE TABLE `dica` (
	idDica INT PRIMARY KEY AUTO_INCREMENT,
    secaoDica_idSecaoDica INT NOT NULL,
    tituloDica VARCHAR(70) NOT NULL,
    descricao TEXT NOT NULL,
    dataCriacao DATE NOT NULL,
    FOREIGN KEY (secaoDica_idSecaoDica) REFERENCES secaoDica(idSecaoDica)
);

CREATE TABLE `usuario_has_secao` (
	usuario_idUsuario INT NOT NULL,
	secaoProduto_idSecaoProduto INT NOT NULL,
	secaoDica_idSecaoDica INT NOT NULL,
    
	FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (secaoProduto_idSecaoProduto) REFERENCES secaoProduto(idSecaoProduto),
	FOREIGN KEY (secaoDica_idSecaoDica) REFERENCES secaoDica(idSecaoDica)
);
