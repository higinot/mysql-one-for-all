SELECT ar.artist_name as artista, ab.album_title as album FROM `SpotifyClone`.albums ab
INNER JOIN `SpotifyClone`.artists ar ON  ab.album_artist = ar.artist_id
INNER JOIN `SpotifyClone`.songs s ON s.song_album = ab.album_id
WHERE ar.artist_name = "Elis Regina"
GROUP BY ar.artist_name, ab.album_title;