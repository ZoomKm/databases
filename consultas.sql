CREATE DATABASE super;

CREATE TABLE Produtos(
idProduto INT NOT NULL AUTO_INCREMENT,
nomeProduto VARCHAR(200),
categoriaProduto VARCHAR(200),
valorVendaProduto FLOAT,
quantidadeProduto INT,
PRIMARY KEY (idProduto)
);

INSERT into Produtos
(nomeProduto,categoriaProduto,valorVendaProduto,quantidadeProduto) values
('Refrigerante','Bebidas','5.50',300),
('Arroz 5kg','Mercearia','8.50',100),
('Feijão','Mercearia','6.50',800),
('Detergente','Limpeza','2.10',100),
('Leite','Laticínios','2.70',600),
('Bolacha recheada',NULL,'1.50',200),
('Leite condensado','Mercearia','4.50',500);

SELECT * FROM Produtos;
SELECT nomeProduto, valorVendaProduto FROM Produtos;
SELECT * FROM Produtos WHERE nomeProduto='Leite';
SELECT nomeProduto, valorVendaProduto FROM Produtos WHERE nomeProduto='Leite';

SELECT nomeProduto, categoriaProduto, valorVendaProduto 
FROM Produtos WHERE categoriaProduto <> 'Mercearia';

SELECT * FROM Produtos WHERE valorVendaProduto = 1.50 AND quantidadeProduto = 200;
SELECT * FROM Produtos WHERE categoriaProduto = 'Limpeza' OR valorVendaProduto = 5.50;
SELECT * FROM Produtos WHERE (categoriaProduto ='Limpeza' OR categoriaProduto='Mercearia') AND valorVendaProduto = 6.50;
SELECT * FROM Produtos WHERE categoriaProduto ='Limpeza' OR categoriaProduto='Mercearia' AND valorVendaProduto = 6.50;
SELECT * FROM Produtos WHERE quantidadeProduto >= 300;
SELECT * FROM Produtos WHERE valorVendaProduto <= 5;

SELECT * FROM Produtos WHERE valorVendaProduto BETWEEN 5 AND 10;
SELECT * FROM Produtos WHERE categoriaProduto in ('Limpeza','Bebidas','Laticínios');
SELECT * FROM Produtos WHERE categoriaProduto NOT IN ('Limpeza','Bebidas','Laticínios');
SELECT nomeProduto, valorVendaProduto FROM Produtos WHERE nomeProduto LIKE '%leite%';

SELECT * FROM Produtos WHERE idProduto=5;
SELECT * FROM Produtos WHERE categoriaProduto IS NULL;
SELECT * FROM Produtos WHERE categoriaProduto IS NOT NULL;

SELECT (valorVendaProduto*quantidadeProduto) AS Valor_Total FROM Produtos;
SELECT (quantidadeProduto / valorVendaProduto) AS Valor_Divisao FROM Produtos;
SELECT (quantidadeProduto - valorVendaProduto) AS Valor_Subtracao FROM Produtos;
SELECT (quantidadeProduto + valorVendaProduto) AS Valor_Soma FROM Produtos;
SELECT (valorVendaProduto * 1.2) AS Valor_Reajustado FROM Produtos;

SELECT * FROM Produtos ORDER BY nomeProduto;
SELECT * FROM Produtos ORDER BY categoriaProduto, nomeProduto DESC;

CREATE TABLE Fornecedor (
idFornecedor int auto_increment,
nomeFornecedor varchar(200),
cnpjFornecedor varchar(14),
PRIMARY KEY(idFornecedor)
);

INSERT INTO Fornecedor (nomeFornecedor, cnpjFornecedor) 
VALUES ('Brasil Alimentos', '10000000000101'), 
('Laticínios Norte Minas', '20000000000102'), 
('Alimentos do Centro-Oeste', '30000000000103');

CREATE TABLE Marca (
idMarca int auto_increment,
nomeMarca varchar(200),
PRIMARY KEY(idMarca)
);

INSERT INTO Marca (nomeMarca) VALUES
('Cereais do bom'),
('Bebidas do Brasil'),
('Doce Brasil');

ALTER TABLE Produtos ADD idFornecedor INT;
ALTER TABLE Produtos ADD CONSTRAINT FK_Fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor);
ALTER TABLE Produtos ADD idMarca INT;
ALTER TABLE Produtos ADD CONSTRAINT FK_Marca FOREIGN KEY (idMarca) REFERENCES Marca (idMarca);

UPDATE `super`.`produtos` SET `idFornecedor` = '3' WHERE (`idProduto` = '1');
UPDATE `super`.`produtos` SET `idFornecedor` = '1' WHERE (`idProduto` = '2');
UPDATE `super`.`produtos` SET `idFornecedor` = '1' WHERE (`idProduto` = '3');
UPDATE `super`.`produtos` SET `idFornecedor` = '3' WHERE (`idProduto` = '4');
UPDATE `super`.`produtos` SET `idFornecedor` = '2' WHERE (`idProduto` = '5');
UPDATE `super`.`produtos` SET `idFornecedor` = '3' WHERE (`idProduto` = '6');
UPDATE `super`.`produtos` SET `idFornecedor` = '2' WHERE (`idProduto` = '7');

UPDATE `super`.`produtos` SET `idMarca` = '2' WHERE (`idProduto` = '1');
UPDATE `super`.`produtos` SET `idMarca` = '1' WHERE (`idProduto` = '2');
UPDATE `super`.`produtos` SET `idMarca` = '1' WHERE (`idProduto` = '3');
UPDATE `super`.`produtos` SET `idMarca` = '1' WHERE (`idProduto` = '4');
UPDATE `super`.`produtos` SET `idMarca` = '3' WHERE (`idProduto` = '5');
UPDATE `super`.`produtos` SET `idMarca` = '3' WHERE (`idProduto` = '6');
UPDATE `super`.`produtos` SET `idMarca` = '3' WHERE (`idProduto` = '7');


SELECT Produtos.nomeProduto, Produtos.valorVendaProduto, Marca.nomeMarca 
FROM Produtos, Marca WHERE Produtos.idMarca = Marca.idMarca;
SELECT P.nomeProduto, P.valorVendaProduto, M.nomeMarca 
FROM Produtos AS P, Marca AS M WHERE P.idMarca = M.idMarca;


SELECT P.nomeProduto, M.nomeMarca, F.nomeFornecedor, P.valorVendaProduto
FROM Produtos AS P, Marca AS M, Fornecedor AS F 
WHERE P.idMarca = M.idMarca AND P.idFornecedor = F.idFornecedor;

SELECT P.nomeProduto, P.valorVendaProduto, M.nomeMarca
FROM Produtos AS P JOIN Marca AS M ON P.idMarca = M.idMarca;

SELECT P.nomeProduto, P.valorVendaProduto, M.nomeMarca
FROM Produtos AS P INNER JOIN Marca AS M ON P.idMarca=M.idMarca
WHERE P.categoriaProduto='Mercearia' ORDER BY P.nomeProduto;

CREATE TABLE Funcionario (
idFuncionario int auto_increment,
nomeFuncionario varchar(200),
cpfFuncionario varchar(11),
cidadeFuncionario varchar(200),
PRIMARY KEY(idFuncionario)
);

INSERT INTO Funcionario (nomeFuncionario,cpfFuncionario,cidadeFuncionario) VALUES
('João dos Santos','10000000001','São Paulo'),
('Maria da Silva','20000000002','Rio de Janeiro'),
('Ana Maria','30000000003','Brasília'),
('Brasil Alimentos','40000000004','Cuiabá');

SELECT nomeFuncionario FROM Funcionario UNION 
SELECT nomeFornecedor FROM Fornecedor ORDER BY nomeFuncionario;

SELECT nomeFuncionario FROM Funcionario UNION ALL SELECT 
nomeFornecedor FROM Fornecedor ORDER BY nomeFuncionario;


