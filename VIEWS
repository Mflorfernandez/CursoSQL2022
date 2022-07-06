CREATE OR REPLACE VIEW balance_por_usuario AS 
SELECT u.user AS Usuario, SUM(t.amount) AS Balance, m.short_name AS Moneda
FROM transacciones AS t
INNER JOIN usuario AS u ON (t.id_user = u.id)
INNER JOIN cuentas AS c ON (t.id_account = c.id)
INNER JOIN tipodemoneda AS m ON (c.id_currency = m.id)
GROUP BY t.id_user, m.id;

CREATE OR REPLACE VIEW cuentas_por_usuario AS
SELECT u.user AS Usuario, c.name AS Cuenta, m.short_name AS Moneda 
FROM cuentas AS c
INNER JOIN tipodemoneda AS m ON (c.id_currency = m.id)
INNER JOIN usuario AS u ON (c.id_user = u.id);

CREATE OR REPLACE VIEW categorias_y_subcategorias AS
SELECT c.name AS Nombre, s.name AS Detalle
FROM categoria AS c
INNER JOIN subcategoria AS s ON (s.id_category = c.id);

CREATE OR REPLACE VIEW cantidad_de_operaciones AS
SELECT u.user AS Usuario, c.name AS Categoria, s.name AS Subcategoria, COUNT(1) AS 'Cantidad de Operaciones'
FROM transacciones AS t
INNER JOIN usuario AS u ON (u.id = t.id_user)
INNER JOIN categoria AS c ON (c.id = t.id_category)
INNER JOIN subcategoria AS s ON (s.id = t.id_subcategory)
GROUP BY t.id_user, t.id_category, t.id_subcategory;

CREATE OR REPLACE VIEW operaciones_mes_anio AS
SELECT YEAR(t.date) AS 'Año', MONTH(t.date) AS 'Mes', COUNT(1) AS 'Cantidad de Operaciones'
FROM transacciones AS t
GROUP BY YEAR(t.date), MONTH(t.date)
ORDER BY YEAR(t.date), MONTH(t.date);


