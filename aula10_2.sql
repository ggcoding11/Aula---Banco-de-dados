DROP SCHEMA IF EXISTS teste;
CREATE SCHEMA teste;
USE teste;

CREATE TABLE tabela_clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(200) NOT NULL,
    limite_credito DECIMAL(8,2) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM tabela_clientes;

TRUNCATE tabela_clientes;
DROP TABLE tabela_clientes;

INSERT INTO tabela_clientes(nome, cidade, limite_credito) VALUES ("Gustavo", "Maringá", 2500.01), ("Mateus", "Maringá", 2500.02), 
("Jorge", "Maringá", 2500.01), (+"Pedro", "Maringá", 2500.23), ("Fernando", "Maringá", 2500.54);


