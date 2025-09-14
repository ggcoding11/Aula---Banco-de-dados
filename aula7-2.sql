CREATE SCHEMA schema_estudo;
USE schema_estudo;

CREATE TABLE pessoa(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL DEFAULT("De Souza"),
    dataNasc DATETIME NOT NULL DEFAULT(CURRENT_TIMESTAMP),
    sexo ENUM("Masculino", "Feminino") NOT NULL,

	PRIMARY KEY(id),
    UNIQUE KEY uk1 (nome)
);










