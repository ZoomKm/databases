USE investimentosdb;

CREATE ROLE 'app_crud', 'app_read';
GRANT SELECT, INSERT, UPDATE, DELETE  ON investimentosdb.* TO 'app_crud';
GRANT SELECT ON investimentosdb.* TO 'app_read';
FLUSH PRIVILEGES;


CREATE USER 'alpha'@'localhost' IDENTIFIED BY 'mudesuasenha';
CREATE USER 'omega'@'localhost' IDENTIFIED BY 'mudesuasenha';

REVOKE ALL PRIVILEGES ON investimentosdb.* FROM  'alpha'@'localhost';
REVOKE ALL PRIVILEGES ON investimentosdb.* FROM 'omega'@'localhost';
FLUSH PRIVILEGES;

GRANT 'app_crud' TO 'alpha'@'localhost';
GRANT 'app_read' TO 'omega'@'localhost';