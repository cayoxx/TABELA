CREATE DATABASE empresa_db_1e;

CREATE USER 'funcionario'@'localhost' identified by '987';
CREATE USER 'gerente'@'localhost' identified by '765';
CREATE USER 'admin'@'%' identified by '543';

GRANT SELECT ON empresa_db_1e.* TO 'funcionario'@'localhost';

GRANT SELECT ON empresa_db_1e.* TO 'gerente'@'localhost';
GRANT INSERT ON empresa_db_1e.* TO 'gerente'@'localhost';
GRANT UPDATE ON empresa_db_1e.* TO 'gerente'@'localhost';

GRANT ALL privileges ON empresa_db_1e.* TO 'admin'@'%';

REVOKE INSERT ON empresa_db_1e.* FROM 'gerente'@'localhost';

RENAME USER 'funcionario'@'localhost' TO 'assistente'@'localhost';

ALTER USER 'gerente'@'localhost' identified by '234';

SHOW GRANTS FOR 'assistente'@'localhost';
SHOW GRANTS FOR 'gerente'@'localhost';
SHOW GRANTS FOR 'admin'@'%';

DROP USER 'assistente'@'localhost';



