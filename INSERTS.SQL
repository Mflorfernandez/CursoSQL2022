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
(1, 1, 2, 'Caja de ahorro', 'ca en pesos de Lorena'),
(2, 2, 3, 'Tarjeta de credito usd', 'tc de Gonzalo'),
(3, 3, 3, 'Tarjeta de credito eur', 'tc de Gonzalo');

INSERT INTO transacciones
(id, date, id_user, id_category, id_subcategory, id_account, detail, amount)
VALUES
(1, '2022-03-25 18:54:23', 2, 2, 3, 1, 'Remera', 5000);





