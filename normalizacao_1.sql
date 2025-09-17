CREATE SCHEMA ex1;
USE ex1;

-- Não normalizada
CREATE TABLE Cliente(
	idCliente INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefones VARCHAR(20) NOT NULL,
    
    PRIMARY KEY(idCliente)
);

-- Normalizada

CREATE TABLE Cliente(
	idCliente INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    PRIMARY KEY(idCliente)
);

CREATE TABLE Telefone(
	idTelefone INT AUTO_INCREMENT,
    idCliente INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    PRIMARY KEY(idTelefone)
);
