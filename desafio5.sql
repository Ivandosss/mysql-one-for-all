CREATE VIEW top_2_hits_do_momento AS 
SELECT (SELECT musica FROM SpotifyClone.musicas AS m
WHERE m.musica_id = h.musica_id) AS cancao,
(SELECT COUNT(*) FROM SpotifyClone.historico AS h 
WHERE musica_id = h.musica_id) AS reproducoes
FROM SpotifyClone.historico AS h
GROUP BY h.musica_id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2; 
