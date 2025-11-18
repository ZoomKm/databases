drop database exemplojavabd;
CREATE DATABASE exemplojavabd;

USE exemplojavabd;
CREATE TABLE `empresa` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`nomeempresa` varchar(50) NOT NULL,
`areaatuacao` varchar(50) NOT NULL,
PRIMARY KEY (id)
);

select * from empresa;