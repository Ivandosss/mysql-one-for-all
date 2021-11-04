CREATE VIEW perfil_artistas AS 
SELECT a.name AS artista,
al.title AS album,
(SELECT COUNT(*) FROM followers AS f WHERE artist_id = a.artist_id) AS seguidores
FROM album AS al
INNER JOIN artist AS a ON a.artist_id = al.artist_id
ORDER BY seguidores DESC, artista ASC, album ASC;  
