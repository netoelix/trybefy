SELECT u.full_name AS 'Pessoa usuária', COUNT(af.artist_id) AS 'Artistas que segue'
FROM users AS u
INNER JOIN artists_followers AS af ON u.id = af.user_id
GROUP BY u.full_name
ORDER BY `Pessoa usuária` ASC;