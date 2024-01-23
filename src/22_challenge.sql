SELECT ar.name AS 'Artista', COUNT(son.id) AS 'Quantidade de Músicas'
FROM artists AS ar
INNER JOIN albums AS al ON ar.id = al.artist_id
INNER JOIN songs AS son ON al.id = son.album_id
GROUP BY ar.name
ORDER BY `Quantidade de Músicas` DESC, `Artista` ASC
LIMIT 3;