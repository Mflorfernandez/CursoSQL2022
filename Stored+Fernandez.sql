CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_por_orden`(IN columna VARCHAR(60), IN orientacion VARCHAR(4))
BEGIN
	#columna y orientacion son los dos parametros y con concat se unen los valores para poder llamar determinada columna de la tabla de usuario e ingresar la orientacion ascendente o descendente#
	SET @consulta = concat('SELECT * FROM usuario ORDER BY ' , columna, ' ', orientacion); 
	PREPARE ejecutar FROM @consulta;
	EXECUTE ejecutar; 
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `sumar_usuario`(IN firstname1 VARCHAR(60), IN lastname1 VARCHAR (60), IN user1 VARCHAR(60), IN password1 VARCHAR(60), IN email1 VARCHAR(60))
BEGIN
    #recibe todos los parametros necesarios e inserta un nuevo usuario#
	INSERT INTO usuario
	(firstname, lastname, user, password, email)
	VALUES
	(firstname1, lastname1, user1, password1, email1);
END