CREATE SCHEMA sistema_mercado;
USE sistema_mercado;

CREATE TABLE cliente(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
	
    PRIMARY KEY(id)
);

CREATE TABLE pedido(
	id INT NOT NULL AUTO_INCREMENT,
    dataElaboracao DATETIME NOT NULL,
    idCliente INT NOT NULL,
    CONSTRAINT FOREIGN KEY(idCliente) REFERENCES cliente(id),
    
    PRIMARY KEY(id)
);

CREATE TABLE categoria(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    
    PRIMARY KEY(id)
);

CREATE TABLE produto(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
    preco DECIMAL(2,2) NOT NULL,
    idCategoria INT NOT NULL,
    CONSTRAINT FOREIGN KEY(idCategoria) REFERENCES categoria(id),
    
    PRIMARY KEY(id)
);

CREATE TABLE produto_pedido(
	idProduto INT NOT NULL,
    idPedido INT NOT NULL,
    
    PRIMARY KEY(idProduto, idPedido),
    
    CONSTRAINT FOREIGN KEY(idProduto) REFERENCES produto(id),
    CONSTRAINT FOREIGN KEY(idPedido) REFERENCES pedido(id)
);






