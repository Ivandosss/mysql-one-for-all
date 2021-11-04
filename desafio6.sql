CREATE VIEW faturamento_atual AS
SELECT MIN(price.price) AS faturamento_minimo,
MAX(price.price) AS faturamento_maximo,
ROUND(AVG(price.price), 2) AS faturamento_medio,
SUM(price.price) AS faturamento_total
FROM (SELECT p.price FROM plan p, `user` u 
WHERE p.plan_id = u.plan_id) AS price;
