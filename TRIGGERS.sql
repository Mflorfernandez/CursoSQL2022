
#1)Estas sentencias crean una tabla y luego un Trigger que escribe cuando se logea un usuario#
DROP TABLE IF EXISTS log_creacion_de_usuario;
CREATE TABLE log_creacion_de_usuario (
	id INT AUTO_INCREMENT,
    date DATE,
    time TIME,
    user VARCHAR(30),
    description VARCHAR(1000),
    PRIMARY KEY (id)
);

DROP TRIGGER IF EXISTS after_sumar_nuevo_usuario; 
CREATE TRIGGER after_sumar_nuevo_usuario
AFTER INSERT ON usuario
FOR EACH ROW
INSERT INTO log_creacion_de_usuario (date, time, user, description)
VALUES (CURRENT_DATE(), CURRENT_TIME(), SESSION_USER(), concat(
'El usuario ' ,
 SESSION_USER(), 
 ' ingreso el dia ',
 CURRENT_DATE(),
 ' a las ',
 CURRENT_TIME(),
 ' y genero un nuevo usuario llamado ',
 NEW.user
 ));

2)  #Estas sentencias crean una tabla y luego un Trigger que escribe cuando se actualiza una categoria#
DROP TRIGGER IF EXISTS before_actualizar_categoria; 
CREATE TRIGGER before_actualizar_categoria
BEFORE UPDATE ON categoria
FOR EACH ROW
INSERT INTO log_actualizacion_de_categoria (date, time, user, description)
VALUES (CURRENT_DATE(), CURRENT_TIME(), SESSION_USER(), concat(
'El usuario ' ,
 SESSION_USER(), 
 ' ingreso el dia ',
 CURRENT_DATE(),
 ' a las ',
 CURRENT_TIME(),
 ' y actualizo la categoria ',
 OLD.name,
 ' por ',
 NEW.name
 ));