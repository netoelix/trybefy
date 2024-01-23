SELECT al.title AS 'Álbum', SUM(son.duration_in_seconds) AS 'Duração'
FROM albums AS al
INNER JOIN songs AS son
ON al.id = son.album_id
GROUP BY al.title
ORDER BY `Duração Total` DESC;