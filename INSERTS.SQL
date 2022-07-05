INSERT INTO categoria
(id, name)
VALUES
(1, 'Alimentos'), 
(2, 'Shopping'),
(3, 'Transporte'),
(4, 'Entretenimiento'),
(5, 'Servicios Digitales');

INSERT INTO subcategoria
(id, id_category, name)
VALUES
(1, 1, 'Restaurant'),
(2, 1, 'Supermercado'),
(3, 2, 'Ropa'),
(4, 2, 'Calzado'),
(5, 3, 'Sube'),
(6, 3, 'Taxi'),
(7, 4, 'Cine'),
(8, 4, 'Viajes'),
(9, 5, 'Netflix'),
(10, 5, 'Flow');

INSERT INTO usuario
(id, firstname, lastname, user, password, email)
VALUES
(1, 'Martin', 'Rodriguez', 'mrodriguez', 'wxy456YUer', 'martinrodriguez@gmail.com'),
(2, 'Lorena', 'Perez', 'loreperez', 'Mns490fghe', 'lorenaperez@gmai.com'),
(3, 'Gonzalo', 'Roberti', 'groberti', 'Sda213thij', 'gonzaloroberti@gmail.com');

INSERT INTO tipodemoneda
(id, name, short_name, description)
VALUES
(1,'pesos argentinos', 'ars', 'moneda de curso legal en Argentina'),
(2, 'dolar estadounidense', 'usd', 'moneda de curso legal en Estados Unidos'),
(3, 'euro', 'eur', 'moneda de curso legar en Europa');

INSERT INTO cuentas
(id, id_currency, id_user, name, description)
VALUES
(1, 1, 2, 'Tarjeta de debito', 'ca en pesos de Lorena'),
(2, 1, 1, 'tarjeta de credito ars', 'tc visa de Martin'),
(3, 2, 3, 'Tarjeta de credito ars', 'tc visa de Gonzalo'),
(4, 3, 3, 'Tarjeta de credito eur', 'tc mastercard de Gonzalo');

INSERT INTO transacciones
(id, date, id_user, id_category, id_subcategory, id_account, detail, amount)
VALUES
(1, '2022-03-25 18:54:23', 2, 2, 3, 1, 'remera', 5000),
(2, '2022-04-04 08:32:10', 1, 1, 2, 2, 'compra mensual Coto', 18000),
(3, '2022-04-23 12:45:29', 3, 1, 1, 2, 'cena en palermo', 3000),
(4, '2022-05-12 16:26:17', 2, 5, 9, 1, 'mensual netflix', 15),
(5, '2022-04-13 15:36:12', 1, 3, 5, 2, 'carga sube', 1000),
(6, '2022-06-25 08:13:23', 3, 4, 8, 3, 'pasaje en avion', 25000),
(7, '2022-07-01 23:45:17', 2, 2, 3, 1, 'pantalon de vestir', 9000),
(8, '2022-02-23 12:32:17', 1, 1, 1, 1, 'almuerzo en san telmo', 3000),
(9, '2022-03-21 14:56:18', 3, 5, 10, 3, 'mensual Flow', 6800),
(10, '2022-02-12 13:14:27', 2, 1, 2, 1, 'compra del mes', 12000),
(11, '2022-04-30 09:24:17', 1, 4, 7, 2, 'entrada de cine', 900),
(12, '2022-05-22 08:23:12', 2,2,3,1, 'campera de cuero', 20000),
(13, '2022-07-04 23:21:14', 1, 3, 5, 2, 'carga sube', 500),
(14, '2022-06-14 12:34:45', 1, 3, 6, 2, 'taxi hasta casa', 1000),
(15, '2022-01-23 09:56:14', 3, 1, 2, 2, 'compra para mi cumple', 5000);




