SELECT ar.name AS 'Artista', COUNT(af.user_id) AS 'Total de seguidores'
FROM artists AS ar
INNER JOIN artists_followers AS af ON ar.id = af.artist_id
GROUP BY ar.name
HAVING `Total de seguidores` < 5;