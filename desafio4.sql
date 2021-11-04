CREATE VIEW top_3_artistas AS 
SELECT a.name AS artista, 
COUNT(*) AS seguidores
FROM SpotifyClone.followers AS f 
INNER JOIN SpotifyClone.artist AS a ON f.artist_id = a.artist_id
GROUP BY name
ORDER BY seguidores DESC, artista ASC LIMIT 3;
  