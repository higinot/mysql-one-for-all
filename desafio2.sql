SELECT (
        SELECT COUNT(song_title)
        FROM `SpotifyClone`.songs
    ) as 'cancoes',
    (
        SELECT COUNT(artist_name)
        FROM `SpotifyClone`.artists
    ) as 'artistas',
    (
        SELECT COUNT(album_title)
        FROM `SpotifyClone`.albums
    ) as 'albuns';
