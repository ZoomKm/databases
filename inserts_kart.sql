USE kart_nacional;

INSERT INTO temporada VALUES (1, 1);

INSERT INTO etapa(local, data, hora, Temporada_idTemporada) VALUES ('São Paulo','2024-01-15','14:00',1);
INSERT INTO etapa(local, data, hora, Temporada_idTemporada) VALUES ('Rio de Janeiro','2024-02-20','16:00',1);
INSERT INTO etapa(local, data, hora, Temporada_idTemporada) VALUES ('Campo Grande','2024-03-18','15:00',1);
INSERT INTO etapa(local, data, hora, Temporada_idTemporada) VALUES ('Londrina','2024-04-22','13:00',1);
INSERT INTO etapa(local, data, hora, Temporada_idTemporada) VALUES ('Porto Alegre','2024-05-10','10:00',1);

INSERT INTO patrocinio(nomePatrocinio) VALUES ('MotorTech Brasil');
INSERT INTO patrocinio(nomePatrocinio) VALUES ('Velocidade Extrema');
INSERT INTO patrocinio(nomePatrocinio) VALUES ('Alta Performance');
INSERT INTO patrocinio(nomePatrocinio) VALUES ('Turbo Racing');
INSERT INTO patrocinio(nomePatrocinio) VALUES ('Pneus ProDrive');

INSERT INTO equipe(nome, Patrocinio_idPatrocinio) VALUES ('Escuderia Veloz', 1);
INSERT INTO equipe(nome, Patrocinio_idPatrocinio) VALUES ('Rápidos & Furiosos', 2);
INSERT INTO equipe(nome, Patrocinio_idPatrocinio) VALUES ('Fênix Racing', 3);
INSERT INTO equipe(nome, Patrocinio_idPatrocinio) VALUES ('Equipe Tempestade', 4);
INSERT INTO equipe(nome, Patrocinio_idPatrocinio) VALUES ('Corredores de Aço', 5);

INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade) VALUES ('Lucas Andrade', 70.5, 1, 1,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Renato Figueiredo', 75, 0, 1,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Mateus Silva', 68, 0, 2,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Bruno Almeida', 78.3, 1, 2,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Carla Pereira', 60, 1, 3,'Portugal');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Gabriela Torres', 58.5, 0, 3,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('João Costa', 80.5, 0, 4,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Thiago Santos', 72.5, 0, 4,'Brasil');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Mariana Gomes', 62, 1, 5,'Portugal');
INSERT INTO piloto(nome, peso, capitao, Equipe_idEquipe, nacionalidade)  VALUES ('Beatriz Lopes', 63.2, 1, 5,'Portugal');

INSERT INTO etapa_has_piloto VALUES (1, 1);
INSERT INTO etapa_has_piloto VALUES (1, 2);
INSERT INTO etapa_has_piloto VALUES (1, 3);
INSERT INTO etapa_has_piloto VALUES (1, 4);
INSERT INTO etapa_has_piloto VALUES (1, 5);
INSERT INTO etapa_has_piloto VALUES (1, 6);
INSERT INTO etapa_has_piloto VALUES (1, 7);
INSERT INTO etapa_has_piloto VALUES (1, 8);
INSERT INTO etapa_has_piloto VALUES (1, 9);
INSERT INTO etapa_has_piloto VALUES (1, 10);
