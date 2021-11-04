DROP VIEW IF EXISTS top_2_hits_do_momento; 
CREATE VIEW top_2_hits_do_momento AS 
SELECT m.musica AS cancao, 
COUNT(*) AS reproducoes
FROM SpotifyClone.historico AS h 
INNER JOIN SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;
