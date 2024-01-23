SELECT ar.name AS 'Artista', GROUP_CONCAT(al.title) AS 'Álbuns'
FROM artists AS ar
INNER JOIN albums AS al
ON al.artist_id = ar.id
GROUP BY ar.name
ORDER BY ar.name ASC;