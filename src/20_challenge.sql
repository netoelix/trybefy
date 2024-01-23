SELECT ar.name AS 'Artista', al.title AS 'Álbum', son.title AS 'Música'
FROM artists AS ar
INNER JOIN albums AS al ON ar.id = al.artist_id
INNER JOIN songs AS son ON al.id = son.album_id
WHERE ar.name != 'The Beatles'
ORDER BY `Artista` ASC, `Álbum` ASC, `Música` ASC;