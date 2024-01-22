SELECT pl.name AS 'Plano', COUNT(us.plan_id) AS 'Quantidade de usuários'
FROM plans AS pl
INNER JOIN users AS us
ON pl.id = us.plan_id
GROUP BY pl.name
ORDER BY pl.name ASC;