CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MAX(p.price),2) AS 'faturamento_maximo',
ROUND(SUM(p.price) / COUNT(u.user_id),2) AS 'faturamento_medio',
ROUND(MIN(p.price),2) AS 'faturamento_minimo',
ROUND(SUM(p.price),2) AS 'fatueamento_total'
FROM SpotifyClone.plan AS p
JOIN SpotifyClone.user AS u ON p.plan_id = u.plan_id; 
