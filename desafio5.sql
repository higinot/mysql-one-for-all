SELECT song_title as 'cancao', COUNT(played_date) as 'reproducoes' FROM `SpotifyClone`.songs s
LEFT JOIN `SpotifyClone`.history h ON s.song_id = h.song_id
GROUP BY s.song_id LIMIT 2; 