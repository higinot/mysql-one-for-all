SELECT user_name as 'usuario',
    IF(
        MAX(h.played_date) >= "2021-01-01 00:00:00",
        'Usuário ativo',
        'Usuário inativo'
    ) as 'status_usuario'
FROM `SpotifyClone`.users u
    LEFT JOIN `SpotifyClone`.history h ON u.user_id = h.user_id
GROUP BY u.user_id
ORDER BY u.user_name;