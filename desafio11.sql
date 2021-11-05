CREATE VIEW cancoes_premium AS 
SELECT s.title AS nome,
COUNT(h.song_id) AS reproducoes FROM `history` AS h
INNER JOIN song AS s ON s.song_id = h.song_id 
WHERE h.user_id IN (SELECT user_id FROM `user` 
WHERE plan_id IN (2,3))
GROUP BY nome
ORDER BY nome;
