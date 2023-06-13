DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
DROP TABLE `SpotifyClone`.plans;
CREATE TABLE SpotifyClone.plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(50),
  plan_price DECIMAL(7, 2)
);

INSERT INTO SpotifyClone.plans (plan, plan_price)
VALUES ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);

CREATE TABLE SpotifyClone.user(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50),
  age INT,
  plan_type INT,
  since DATE,
  FOREIGN KEY (plan_type) REFERENCES plans(plan_id)
);

INSERT INTO `SpotifyClone`.user (user_name, age, plan_type, since)
VALUES ("Barbara Liskov", 82,1,'2019-10-20');

CREATE TABLE SpotifyClone.artist(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(50)
);

CREATE TABLE SpotifyClone.follows(
  user_id INT,
  artist_followed INT,
  PRIMARY KEY (user_id, artist_followed),
  FOREIGN KEY (artist_followed) REFERENCES artist(artist_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id)
);

CREATE TABLE SpotifyClone.albums(
  album_id INT PRIMARY KEY,
  album_title VARCHAR(50),
  album_artist INT,
  year YEAR,
  FOREIGN KEY (album_artist) REFERENCES artist(artist_id)
);

CREATE TABLE SpotifyClone.songs(
  song_id INT PRIMARY KEY,
  song_title VARCHAR(50),
  song_duration INT,
  song_album INT,
  FOREIGN KEY (song_album) REFERENCES albums(album_id)
);

CREATE TABLE SpotifyClone.history(
  user_id INT,
  song_id INT,
  played_date DATETIME,
  PRIMARY KEY(user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

INSERT INTO SpotifyClone.user (user_id, user_name, age, plan_type, since)
  VALUES
    (1, 'Barbara Liskov', 82, 1, '2019-10-20'),
    (2, 'Robert Cecil Martin', 58, 1, '2017-01-06'),
    (3, 'Ada Lovelace', 37, 2, '2017-12-30'),
    (4, 'Martin Fowler', 46, 2, '2017-01-17'),
    (5, 'Sandi Metz', 58, 2, '2018-04-29'),
    (6, 'Paulo Freire', 19, 3, '2018-02-14'),
    (7, 'Bell Hooks', 26, 3, '2018-01-05'),
    (8, 'Christopher Alexander', 85, 4, '2019-06-05'),
    (9, 'Judith Butler', 45, 4, '2020-05-13'),
    (10, 'Jorge Amado', 58, 4, '2017-02-17');

INSERT INTO SpotifyClone.artist (artist_id, artist_name)
  VALUES
    (1, 'Beyoncé'),
    (2, 'Queen'),
    (3, 'Elis Regina'),
    (4, 'Baco Exu do Blues'),
    (5, 'Blind Guardian'),
    (6, 'Nina Simone');  

 INSERT INTO SpotifyClone.follows (user_id, artist_followed)
 VALUES
 (1, 1),
 (1, 2),
 (1, 3),
 (2, 1),
 (2, 3),
 (3, 2),
 (4, 4),
 (5, 5),
 (5, 6),
 (6, 1),
 (6, 6),
 (7, 6),
 (9, 3),
 (10, 2);

 INSERT INTO SpotifyClone.albums (album_id, album_title, album_artist, year)
  VALUES
    (1, 'Renaissance', 1, 2022),
    (2, 'Falso Brilhante', 3, 1998),
    (3, 'Vento de Maio', 3, 2001),
    (4, 'I Put A Spell On You', 6, 2012),
    (5, 'Hot Space', 2, 1982),
    (6, 'QVVJFA?', 4, 2003),
    (7, 'Somewhere Far Beyond', 5, 2007),
    (8, 'Jazz', 2, 1978);

  INSERT INTO SpotifyClone.songs (song_id, song_title, song_duration, song_album)
  VALUES
    (1, 'Feeling Good', 100, 4),
    (2, 'Samba em Paris', 267, 6),
    (3, 'ALIEN SUPERSTAR', 116, 1),
    (4, 'Don’t Stop Me Now', 203, 8),
    (5, 'Under Pressure', 152, 5),
    (6, 'O Medo de Amar é o Medo de Ser Livre', 207, 3),
    (7, 'The Bard’s Song', 244, 7),
    (8, 'VIRGO’S GROOVE', 369, 1),
    (9, 'Como Nossos Pais', 105, 2),
    (10, 'BREAK MY SOUL', 279, 1);

INSERT INTO SpotifyClone.history (user_id, song_id, played_date)
 VALUES
    (1, 2, '2022-02-28 10:45:55'),
    (1, 8, '2020-05-02 05:30:35'),
    (1, 1, '2020-03-06 11:22:33'),
    (2, 1, '2022-08-05 08:05:17'),
    (2, 6, '2020-01-02 07:40:33'),
    (3, 1, '2020-11-13 16:55:13'),
    (3, 8, '2020-12-05 18:38:30'),
    (4, 2, '2021-08-15 17:10:10'),
    (5, 2, '2022-01-09 01:44:33'),
    (5, 5, '2020-08-06 15:23:43'),
    (6, 6, '2017-01-24 00:31:17'),
    (6, 10, '2017-10-12 12:35:20'),
    (7, 4, '2011-12-15 22:30:49'),
    (8, 4, '2012-03-17 14:56:41'),
    (9, 7, '2022-02-24 21:14:22'),
    (10, 3, '2015-12-13 08:30:22');
