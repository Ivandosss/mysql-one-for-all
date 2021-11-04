DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN artist_name varchar(40))
BEGIN
SELECT a.name AS artista, al.title AS album
FROM SpotifyClone.album AS al 
INNER JOIN SpotifyClone.artist AS a ON a.artist_id = al.artist_id
WHERE a.name = artist_name
ORDER BY album;
END $$
DELIMITER ;
