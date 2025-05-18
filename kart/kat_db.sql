CREATE DATABASE kart_nacional;
USE kart_nacional;

CREATE TABLE temporada (
    idTemporada INT NOT NULL AUTO_INCREMENT,
    numero INT NOT NULL, 
    PRIMARY KEY (idTemporada)
);

CREATE TABLE etapa (
    idEtapa INT NOT NULL AUTO_INCREMENT,
    local VARCHAR(100) NOT NULL,
    data DATE NOT NULL,
    hora VARCHAR(45) NOT NULL,
    Temporada_idTemporada INT NOT NULL,
    PRIMARY KEY (idEtapa),
    FOREIGN KEY (Temporada_idTemporada) REFERENCES temporada(idTemporada)
);

CREATE TABLE piloto (
    idPiloto INT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    peso FLOAT NOT NULL,
    capitao TINYINT NOT NULL,
    Equipe_idEquipe INT NOT NULL, 
    nacionalidade VARCHAR(45),
    PRIMARY KEY (idPiloto)
);

CREATE TABLE patrocinio (
    idPatrocinio INT AUTO_INCREMENT,
    nomePatrocinio VARCHAR(45) NOT NULL,
    PRIMARY KEY (idPatrocinio) 
);

CREATE TABLE equipe (
    idEquipe INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    Patrocinio_idPatrocinio INT,
    PRIMARY KEY (idEquipe),
    FOREIGN KEY (Patrocinio_idPatrocinio) REFERENCES patrocinio(idPatrocinio)
);

ALTER TABLE piloto ADD FOREIGN KEY (Equipe_idEquipe) REFERENCES equipe(idEquipe);

CREATE TABLE etapa_has_piloto (
    Etapa_idEtapa INT,
    Piloto_idPiloto INT,
    PRIMARY KEY (Etapa_idEtapa, Piloto_idPiloto),
    FOREIGN KEY (Etapa_idEtapa) REFERENCES etapa(idEtapa),
    FOREIGN KEY (Piloto_idPiloto) REFERENCES piloto(idPiloto)
);