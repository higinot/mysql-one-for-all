SELECT s.song_title as nome, COUNT(h.played_date) as reproducoes FROM `SpotifyClone`.history h
INNER JOIN `SpotifyClone`.songs s ON s.song_id = h.song_id
INNER JOIN `SpotifyClone`.users u ON u.user_id = h.user_id
INNER JOIN `SpotifyClone`.plans p ON u.plan_type = p.plan_id
WHERE p.plan_type = 'gratuito' OR p.plan_type = 'pessoal'
GROUP BY s.song_title, p.plan_type
ORDER BY s.song_title;