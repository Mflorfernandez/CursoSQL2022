CREATE USER 'read_only_user'@'localhost' IDENTIFIED BY '2549MBJK';

CREATE USER 'read_and_write_user'@'localhost' IDENTIFIED BY 'SDFG1234';

GRANT SELECT ON gastos_personales.* TO 'read_only_user'@'localhost';
SHOW GRANTS FOR 'read_only_user'@'localhost';

GRANT SELECT, INSERT, UPDATE ON gastos_personales.* TO 'read_and_write_user'@'localhost';
SHOW GRANTS FOR 'read_and_write_user'@'localhost';