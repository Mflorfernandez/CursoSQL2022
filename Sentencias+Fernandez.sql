CREATE USER 'read_only_user'@'localhost' IDENTIFIED BY '2549MBJK';
#Creo el usaurio 'read_only_user' que solamente tiene solo lectura en mi base de datos#


CREATE USER 'read_and_write_user'@'localhost' IDENTIFIED BY 'SDFG1234';
#Creo el usaurio 'read_and_write_user' que tiene lectura, insersion y modificacion en mi base de datos#


GRANT SELECT ON gastos_personales.* TO 'read_only_user'@'localhost';
SHOW GRANTS FOR 'read_only_user'@'localhost';
#Le doy permisos de lectura solamente. No puede eliminar datos#


GRANT SELECT, INSERT, UPDATE ON gastos_personales.* TO 'read_and_write_user'@'localhost';
SHOW GRANTS FOR 'read_and_write_user'@'localhost';
#Le doy permisos lectura, escritura y modificacion. No puede eliminar datos#