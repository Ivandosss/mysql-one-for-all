CREATE VIEW faturamento_atual AS
SELECT
ROUND(MIN(p.price),2) AS 'faturamento_minimo', 
ROUND(MAX(p.price),2) AS 'faturamento_maximo',
ROUND(AVG(p.price)) AS 'faturamento_medio',
ROUND(SUM(p.price),2) AS 'fatueamento_total'
FROM SpotifyClone.user AS u
JOIN SpotifyClone.plan AS p ON p.plan_id = u.plan_id; 
