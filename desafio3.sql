CREATE VIEW historico_reproducao_usuarios AS 
SELECT u.usuario AS usuario, m.musica AS nome
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
JOIN SpotifyClone.musicas AS m ON m.musica_id = h.musica_id
ORDER BY usuario, nome;  
