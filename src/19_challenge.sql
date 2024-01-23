SELECT son.title AS 'Título', son.duration_in_seconds AS 'Duração', al.title AS 'Álbum'
FROM songs AS son
INNER JOIN albums AS al
ON son.album_id = al.id
WHERE son.duration_in_seconds BETWEEN 300 AND 480
ORDER BY `Duração` ASC;