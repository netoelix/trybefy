SELECT son.title FROM songs AS son
INNER JOIN albums AS alb
ON son.album_id = alb.id
WHERE son.album_id = 1;