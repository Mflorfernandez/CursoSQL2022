START TRANSACTION;
DELETE FROM cuentas
WHERE id = 4;

SELECT * FROM cuentas;

#ROLLBACK;
COMMIT;


START TRANSACTION;
INSERT INTO categoria (name) VALUES ('Tecnologia');
INSERT INTO categoria (name) VALUES ('Mascota');
INSERT INTO categoria (name) VALUES ('Supermercado');
INSERT INTO categoria (name) VALUES ('Gimnasio');
SAVEPOINT primeros_4;
INSERT INTO categoria (name) VALUES ('Servicios generales');
INSERT INTO categoria (name) VALUES ('Internet');
INSERT INTO categoria (name) VALUES ('Peluqueria');
INSERT INTO categoria (name) VALUES ('Alquiler');
#ROLLBACK TO primeros_4;
SAVEPOINT segundos_4;
COMMIT;
SELECT * FROM categoria;