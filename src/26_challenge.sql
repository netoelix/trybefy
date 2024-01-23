SELECT ar.name AS 'Artista', COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM artists AS ar
INNER JOIN albums AS al ON ar.id = al.artist_id
INNER JOIN songs AS son ON al.id = son.album_id
INNER JOIN history_play_songs AS hps ON son.id = hps.song_id
GROUP BY ar.name
HAVING `Quantidade de músicas reproduzidas` > 10
ORDER BY `Artista` ASC;