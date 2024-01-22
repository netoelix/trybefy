SELECT us.full_name AS 'Nome completo', us.email AS 'E-mail', pl.name AS 'Plano'
 FROM users AS us
 INNER JOIN plans AS pl ON us.plan_id = pl.id
 ORDER BY us.full_name;