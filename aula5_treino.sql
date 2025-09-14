CREATE SCHEMA teste_schema;
USE teste_schema;

CREATE TABLE mae(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE filho(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    peso DECIMAL(2,2) NOT NULL,
    mae_id INT NOT NULL, -- Devo criar a coluna antes, para depois setar como FK
    CONSTRAINT FOREIGN KEY(mae_id) REFERENCES mae(id),
    
    PRIMARY KEY(id)
);
