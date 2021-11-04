CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.name AS usuario, s.title AS nome
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.user AS u ON u.user_id = h.user_id
INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
ORDER BY usuario, nome;  
