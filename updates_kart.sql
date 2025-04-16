USE kart_nacional;

UPDATE etapa SET local = 'Salvador' WHERE idEtapa ='3';
UPDATE etapa SET local = 'Goiânia' WHERE idEtapa ='4';

SET SQL_SAFE_UPDATES = 0;

UPDATE equipe SET Patrocinio_idPatrocinio = null WHERE idEquipe = '5';
DELETE FROM `patrocinio` WHERE `idPatrocinio` = 5;

SELECT * FROM piloto;
