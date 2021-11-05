CREATE VIEW SpotifyClone.perfil_artistas AS 
SELECT a.name AS artista,
al.title AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artist AS a
JOIN SpotifyClone.album AS al ON a.artist_id = al.artist_id
JOIN SpotifyClone.followers AS f ON f.artist_id = a.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;  
