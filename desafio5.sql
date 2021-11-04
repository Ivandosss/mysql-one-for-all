CREATE VIEW top_2_hits_do_momento AS 
SELECT (SELECT musica FROM SpotifyClone.musicas AS m
WHERE m.musica_id = h.musica_id) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.historico AS h 
WHERE musica_id = h.musica_id) AS reproducoes
FROM SpotifyClone.historico AS h
GROUP BY h.musica_id
ORDER BY reproducoes DESC, cancoes ASC LIMIT 2; 
