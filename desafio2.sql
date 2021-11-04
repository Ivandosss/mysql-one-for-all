CREATE VIEW estatisticas_musicais AS
SELECT 
(SELECT COUNT(song_id) FROM SpotifyClone.song) AS cancoes,
(SELECT COUNT(artist_id) FROM SpotifyClone.artist) AS artistas,
(SELECT COUNT(album_id) FROM SpotifyClone.album) AS albuns;
