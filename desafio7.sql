CREATE VIEW perfil_artistas AS 
SELECT a.name AS artista,
al.title AS album,
COUNT(*) AS seguidores
FROM artist AS a
JOIN album AS al ON a.artist_id = al.artist_id
JOIN followers AS f ON f.artist_id = a.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;  
