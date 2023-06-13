SELECT user_name as 'usuario',
    count(song_title) as 'qt_de_musicas_ouvidas',
    ROUND(SUM(song_duration / 60), 2) as 'total_minutos'
FROM history h
    LEFT JOIN users u ON u.user_id = h.user_id
    LEFT JOIN songs s ON h.song_id = s.song_id
GROUP BY u.user_name
ORDER BY u.user_name;