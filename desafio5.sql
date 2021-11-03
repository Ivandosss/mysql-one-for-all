CREATE VIEW top_2_hits_do_momento AS 
SELECT m.musica AS cancoes, 
COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS m 
JOIN SpotifyClone.historico AS h ON m.musica_id = m.musica_id
GROUP BY musica
ORDER BY reproducoes DESC, cancoes ASC LIMIT 2;
