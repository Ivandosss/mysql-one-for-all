DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT NOT NULL AUTO_INCREMENT,
plano VARCHAR(20),
valor_plano INT NOT NULL,
PRIMARY KEY (plano_id)
) engine = InnoDB;

INSERT INTO planos (plano_id, plano, valor_plano)
VALUES
(1, 'Gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

CREATE TABLE usuarios(
usuario_id INT NOT NULL AUTO_INCREMENT,
usuario VARCHAR(20) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
PRIMARY KEY(usuario_id),
FOREIGN KEY(plano_id) REFERENCES planos (plano_id)
) ENGINE = InnoDB;

INSERT INTO usuarios (usuario_id, usuario, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

CREATE TABLE artistas(
artista_id INT NOT NULL AUTO_INCREMENT,
artista VARCHAR(20),
PRIMARY KEY (artista_id)
) engine = InnoDB;

INSERT INTO artistas (artista_id, artista)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

CREATE TABLE album(
album_id INT NOT NULL AUTO_INCREMENT,
album VARCHAR(40),
artista_id INT NOT NULL,
PRIMARY KEY (album_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO album (album_id, album, artista_id)
VALUES
(1, 'Envios', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);

CREATE TABLE musicas(
musica_id INT NOT NULL AUTO_INCREMENT,
musica VARCHAR(40),
album_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (musica_id),
FOREIGN KEY (album_id) REFERENCES album (album_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO musicas (musica_id, musica, album_id, artista_id)
VALUES
(1, 'Soul For Us', 1, 1),
(2, 'Reflections Of Magic', 1, 1),
(3, 'Dance With Her Own', 1, 1),
(4, 'Troubles Of My Inner Fire', 2, 1),
(5, 'Time Fireworks', 2, 1),
(6, 'Magic Circus', 3, 2),
(7, 'Honey, So Do I', 3, 2),
(8, 'Sweetie, Let\'s Go Wild', 3, 2),
(9, 'She Knows', 3, 2),
(10, 'Fantasy For Me', 4, 3),
(11, 'Celebration Of More', 4, 3),
(12, 'Rock His Everything', 4, 3),
(13, 'Home Forever', 4, 3),
(14, 'Diamond Power', 4, 3),
(15, 'Honey, Let\'s Be Silly', 4, 3),
(16, 'Thang Of Thunder', 5, 4),
(17, 'Words Of Her Life', 5, 4),
(18, 'Without My Streets', 5, 4);

CREATE TABLE historico(
usuario_id INT NOT NULL AUTO_INCREMENT,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
) engine = InnoDB;

INSERT INTO historico (usuario_id, musica_id)
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
  

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 3),
(2, 1),
(3, 2),
(3, 1),
(4, 4);
