CREATE VIEW perfil_artistas AS 
SELECT a.name AS artista,
al.title AS album,
(SELECT COUNT(*) FROM SpotifyClone.followers AS f WHERE a.artist_id = f.artist_id) AS seguidores
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS a ON a.artist_id = al.artist_id
ORDER BY seguidores DESC, artista ASC, album ASC;  
