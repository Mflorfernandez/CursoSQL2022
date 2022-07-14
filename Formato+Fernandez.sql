CREATE DEFINER=`root`@`localhost` FUNCTION `dolares_a_pesos`(valor DECIMAL(30, 2)) RETURNS decimal(30,2)
    DETERMINISTIC
BEGIN
	DECLARE resultado DECIMAL(30, 2);
    DECLARE tipo_de_cambio DECIMAL(30, 2);
    SET tipo_de_cambio = 270;
    SET resultado = (valor * tipo_de_cambio);
RETURN resultado;
END

CREATE DEFINER=`root`@`localhost` FUNCTION `usuario_balance_usd_a_ars`(usuario INT) RETURNS decimal(30,2)
    READS SQL DATA
BEGIN
	DECLARE resultado DECIMAL;
    SET resultado = (
		SELECT SUM(dolares_a_pesos(t.amount)) AS 'valor en pesos'
		FROM transacciones AS t
		INNER JOIN cuentas AS c ON (c.id = t.id_account)
		INNER JOIN tipodemoneda AS d ON (d.id = c.id_currency)
		WHERE d.id = 2 AND t.id_user = usuario
	);
    IF resultado IS NULL THEN
		SET resultado = 0;
    END IF;    
RETURN resultado;
END
