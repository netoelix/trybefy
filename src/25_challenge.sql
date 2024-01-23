SELECT al.title AS 'Álbum', COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM albums AS al
INNER JOIN songs AS son ON al.id = son.album_id
INNER JOIN history_play_songs AS hps ON son.id = hps.song_id
GROUP BY al.title
ORDER BY `Quantidade de músicas reproduzidas` DESC, `Álbum` ASC
LIMIT 5;