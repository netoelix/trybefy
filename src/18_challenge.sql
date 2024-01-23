SELECT son.title AS 'Título', son.duration_in_seconds AS 'Duração'
FROM songs AS son
WHERE son.duration_in_seconds <= 234
ORDER BY `Duração` ASC;