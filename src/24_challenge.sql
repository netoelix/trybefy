SELECT u.full_name AS 'Nome', COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM users AS u
INNER JOIN history_play_songs AS hps ON u.id = hps.user_id
GROUP BY u.full_name
ORDER BY `Quantidade de músicas reproduzidas` DESC, `Nome` ASC;