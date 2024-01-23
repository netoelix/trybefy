SELECT ar.name AS 'Artista', COUNT(al.title) AS 'Quantidade de álbuns'
FROM artists AS ar
INNER JOIN albums AS al
ON al.artist_id = ar.id
GROUP BY ar.name
ORDER BY `Quantidade de álbuns` DESC, `Artista` ASC;