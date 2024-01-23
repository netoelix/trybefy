SELECT ar.name AS 'Artista'
FROM artists AS ar
INNER JOIN albums AS al
ON al.artist_id = ar.id
GROUP BY ar.name
HAVING COUNT(al.title) >= 3
ORDER BY `Artista` ASC;