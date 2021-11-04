CREATE VIEW top_2_hits_do_momento AS 
SELECT s.title AS cancao, 
COUNT(*) AS reproducoes
FROM SpotifyClone.history AS h 
INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
GROUP BY title
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
