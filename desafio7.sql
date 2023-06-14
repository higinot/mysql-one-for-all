SELECT ar.artist_name as artista, ab.album_title as album, COUNT(DISTINCT(f.user_id)) as seguidores FROM `SpotifyClone`.albums ab
INNER JOIN `SpotifyClone`.artists ar ON  ab.album_artist = ar.artist_id
INNER JOIN `SpotifyClone`.songs s ON s.song_album = ab.album_id
INNER JOIN `SpotifyClone`.follows f ON f.artist_followed = ar.artist_id
GROUP BY ar.artist_name, ab.album_title
ORDER BY seguidores DESC;
