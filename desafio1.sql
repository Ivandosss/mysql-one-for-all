DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
plan_id INT NOT NULL AUTO_INCREMENT,
plan VARCHAR(20) DEFAULT 'gratuito',
price DECIMAL(3,2),
PRIMARY KEY (plan_id)
) engine = InnoDB;

INSERT INTO plan (plan, price)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE `user`(
user_id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(20) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
PRIMARY KEY(user_id),
FOREIGN KEY(plan_id) REFERENCES plan (plan_id)
) ENGINE = InnoDB;

INSERT INTO `user` (`name`, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artist(
artist_id INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(20),
PRIMARY KEY (artist_id)
) engine = InnoDB;

INSERT INTO artist (`name`)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE album(
album_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(40),
artist_id INT NOT NULL,
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
) engine = InnoDB;

INSERT INTO album (title, artist_id)
VALUES
('Envios', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE song(
song_id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(40),
album_id INT NOT NULL,
PRIMARY KEY (song_id),
FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;

INSERT INTO song (title, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE `history`(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES `user` (user_id),
FOREIGN KEY (song_id) REFERENCES song (song_id)
) engine = InnoDB;

INSERT INTO `history` (user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
  
CREATE TABLE followers(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES `user` (user_id),
FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
) engine = InnoDB;

INSERT INTO followers (user_id, artist_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 3),
(2, 1),
(3, 2),
(3, 1),
(4, 4);

