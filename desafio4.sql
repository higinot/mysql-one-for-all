SELECT user_name,
    IF(
        MAX(h.played_date) >= "2021-01-01 00:00:00",
        'Usuário ativo',
        'Usuário inativo'
    )
FROM users u
    LEFT JOIN history h ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;