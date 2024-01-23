SELECT ar.name AS 'Artista'
FROM artists AS ar
INNER JOIN artists_followers AS af ON ar.id = af.artist_id
GROUP BY ar.name
ORDER BY COUNT(af.user_id) DESC
LIMIT 1;