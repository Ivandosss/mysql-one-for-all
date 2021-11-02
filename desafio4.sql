CREATE VIEW top_3_artistas AS 
SELECT a.artista AS artista, 
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a 
JOIN SpotifyClone.seguindo_artistas AS s ON s.artista_id = a.artista_id
ORDER BY seguidores DESC, artista ASC LIMIT 3;
  