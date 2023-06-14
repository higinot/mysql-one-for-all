SELECT (
        SELECT MIN(p.plan_price)
    ) as faturamento_minimo,
    (
        SELECT MAX(p.plan_price)
    ) as faturamento_maximo,
    (
        SELECT ROUND(SUM(p.plan_price) / COUNT(p.plan_price), 2)
    ) as faturamento_medio,
    (
        SELECT SUM(p.plan_price)
    ) as faturamento_total
FROM `SpotifyClone`.users u
    INNER JOIN `SpotifyClone`.plans p ON u.plan_type = p.plan_id;
