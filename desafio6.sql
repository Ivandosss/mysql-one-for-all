CREATE VIEW faturamento_atual AS
SELECT 
ROUND(MAX(p.valor_plano),2) AS 'faturamento_maximo',
ROUND(SUM(p.valor_plano) / COUNT(u.usuario_id),2) AS 'faturamento_medio',
ROUND(MIN(p.valor_plano),2) AS 'faturamento_minimo',
ROUND(SUM(p.valor_plano),2) AS 'fatueamento_total'
FROM SpotifyClone.planos AS p
JOIN SpotifyClone.usuarios AS u ON p.plano_id = u.plano_id; 
