CREATE SCHEMA teste2;
USE teste2;

-- Não normalizado

CREATE TABLE Funcionario(
	idFunc INT AUTO_INCREMENT,
    
    nomeFunc VARCHAR(100) NOT NULL,
    idDepto INT NOT NULL,
    nomeDepto VARCHAR(50) NOT NULL,
    localDepto VARCHAR(200) NOT NULL,

	PRIMARY KEY(idFunc)
);

-- Não normalizado


-- Normalizado

CREATE TABLE Departamento(
	idDepto INT AUTO_INCREMENT,
    nomeDepto VARCHAR(50) NOT NULL,
    localDepto VARCHAR(200) NOT NULL,
    
    
    PRIMARY KEY(idDepto)
);

CREATE TABLE Funcionario(
	idFunc INT AUTO_INCREMENT,
    
    nomeFunc VARCHAR(100) NOT NULL,
    idDepto INT NOT NULL,
    
    FOREIGN KEY (idDepto) REFERENCES Departamento(idDepto),
    
	PRIMARY KEY(idFunc)
);


-- Normalizado