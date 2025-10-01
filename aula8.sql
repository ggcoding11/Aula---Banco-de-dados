CREATE SCHEMA testes;
USE testes;

CREATE TABLE cartinhas_pokemon(
	id BIGINT NOT NULL AUTO_INCREMENT,
    elemento ENUM('Fogo', 'Fantasma', 'Normal'),
    ponto_combate INT NOT NULL,

	PRIMARY KEY(id)
);

SELECT * FROM cartinhas_pokemon;
INSERT INTO cartinhas_pokemon (elemento, ponto_combate)
VALUES ("Fantasma", 15), ("Fogo", 20), ("Normal", 45);

SELECT * FROM cartinhas_pokemon WHERE ponto_combate > 15 AND ponto_combate < 30;

SELECT elemento, id FROM cartinhas_pokemon;

DROP TABLE cartinhas_pokemon;
TRUNCATE TABLE cartinhas_pokemon;