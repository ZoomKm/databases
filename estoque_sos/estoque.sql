drop DATABASE	`estoqueV2`;
CREATE DATABASE	`estoqueV2`;
USE `estoqueV2`;


CREATE TABLE `usuario` (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    tipoUsuario CHAR NOT NULL,
   	nome VARCHAR(40),
	email VARCHAR(70),
	senha VARCHAR(20),
    CONSTRAINT tipoUsuario CHECK (tipoUsuario IN ('P', 'C'))
);


CREATE TABLE `subSecaoProduto` (
	idSubSecaoProduto INT PRIMARY KEY AUTO_INCREMENT,
    secaoProduto_idSecaoProduto INT NOT NULL,
	tituloSubSecao VARCHAR(20) NOT NULL,
    obsSubSecao VARCHAR(200)
);

CREATE TABLE `produto` (
	idProduto INT PRIMARY KEY AUTO_INCREMENT,
    subSecaoProduto_idSubSecaoProduto INT NOT NULL,
	nomeProduto VARCHAR(40) NOT NULL,
    tipoMedida VARCHAR(7) NOT NULL,
    obsProduto VARCHAR(200),    
    CONSTRAINT tipoMedida CHECK (tipoMedida IN ('peso', 'volume', 'unidade')),
    FOREIGN KEY (subSecaoProduto_idSubSecaoProduto) REFERENCES subSecaoProduto(idSubSecaoProduto)
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


CREATE TABLE `subSecaoDica` (
	idSubSecaoDica INT PRIMARY KEY AUTO_INCREMENT,
    secaoDica_idSecaoDica INT NOT NULL,
	tituloSubSecao VARCHAR(20) NOT NULL,
    obsSubSecao VARCHAR(200)
);


CREATE TABLE `dica` (
	idDica INT PRIMARY KEY AUTO_INCREMENT,
    subSecaoDica_idSubSecaoDica INT NOT NULL,
    tituloDica VARCHAR(70) NOT NULL,
    descricao TEXT NOT NULL,
    dataCriacao DATE NOT NULL,
    FOREIGN KEY (subSecaoDica_idSubSecaoDica) REFERENCES subSecaoDica(idSubSecaoDica)
);


CREATE TABLE `usuario_has_subSecao` (
	usuario_idUsuario INT NOT NULL,
	subSecaoProduto_idSubSecaoProduto INT NOT NULL,
	subSecaoDica_idSubSecaoDica INT NOT NULL,
    
	FOREIGN KEY (usuario_idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (subSecaoProduto_idSubSecaoProduto) REFERENCES subSecaoProduto(idSubSecaoProduto),
	FOREIGN KEY (subSecaoDica_idSubSecaoDica) REFERENCES subSecaoDica(idSubSecaoDica)
);
