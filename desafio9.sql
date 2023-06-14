SELECT COUNT(u.user_name) as quantidade_musicas_no_historico
FROM `SpotifyClone`.history h
    INNER JOIN `SpotifyClone`.users u ON u.user_id = h.user_id
WHERE u.user_name = "Barbara Liskov";