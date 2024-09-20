CREATE USER 'nicolle'@'localhost' identified by '321';
RENAME USER 'nicolle'@'localhost' TO 'nicole'@'localhost';
select user, host from MYSQL.user;

CREATE USER 'romero'@'localhost' identified by '321';
DROP USER 'romero'@'localhost';

CREATE USER 'yurialberto'@'localhost' identified by '123';
RENAME USER 'yurialberto'@'localhost' TO 'garro'@'localhost';
select user, host from MYSQL.user;

GRANT ALL privileges ON empresaa_1e TO 'garro'@'localhost';

SHOW GRANTS FOR 'garro'@'localhost';

REVOKE ALL privileges ON empresaa_1e FROM 'garro'@'localhost';

GRANT INSERT ON empresaa_1e.* TO 'garro'@'localhost';

GRANT SELECT ON empresaa_1e.* TO 'garro'@'localhost';

GRANT DELETE ON empresaa_1e.* TO 'garro'@'localhost';

GRANT UPDATE ON empresaa_1e.* TO 'garro'@'localhost';

