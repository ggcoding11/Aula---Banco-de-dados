-- ClientesRuim(idCliente, nome, telefone1, telefone2, telefone3)

CREATE TABLE Cliente(
	idCliente INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,

	PRIMARY KEY(idCliente)
);

CREATE TABLE Telefone(
	id INT NOT NULL AUTO_INCREMENT,
    idCliente INT NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    
	PRIMARY KEY(id)
);
