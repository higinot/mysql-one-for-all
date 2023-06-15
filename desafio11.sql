SELECT song_title as nome_musica,
    CASE
        WHEN song_title LIKE '%Bard%' THEN REPLACE(song_title, 'Bard', 'QA')
        WHEN song_title LIKE '%Amar%' THEN REPLACE(song_title, 'Amar', 'Code Review')
        WHEN song_title LIKE '%Pais%' THEN REPLACE(song_title, 'Pais', 'Pull Requests')
        WHEN song_title LIKE '%SOUL%' THEN REPLACE(song_title, 'SOUL', 'CODE')
        WHEN song_title LIKE '%SUPERSTAR%' THEN REPLACE(song_title, 'SUPERSTAR', 'SUPERDEV')
        ELSE NULL
    END AS novo_nome
FROM `SpotifyClone`.songs
ORDER BY novo_nome DESC
LIMIT 5;