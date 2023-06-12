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
