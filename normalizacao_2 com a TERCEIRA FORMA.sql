CREATE SCHEMA teste_normalizacao;
USE teste_normalizacao;

-- Não normalizada
CREATE TABLE AlunoDisciplina(
	matricula INT,
    codDisciplina INT,
    
    nomeAluno VARCHAR(50) NOT NULL,
    codCurso INT NOT NULL,
    nomeCurso VARCHAR(20) NOT NULL,
    nomeDisciplina VARCHAR(30) NOT NULL,
    nota DECIMAL(2,1) NOT NULL,
    
	PRIMARY KEY(matricula, codDisciplina)
);

-- Não normalizada

-- Normalizada

CREATE TABLE curso(
	codCurso INT AUTO_INCREMENT,
    nomeCurso VARCHAR(20) NOT NULL,

	PRIMARY KEY(codCurso)
);

CREATE TABLE matricula(
	matricula INT,
    nomeAluno VARCHAR(50) NOT NULL,
    codCurso INT NOT NULL,
    
    FOREIGN KEY (codCurso) REFERENCES curso(codCurso),
    
    PRIMARY KEY(matricula)
);

CREATE TABLE disciplina(
	codDisciplina INT NOT NULL,
    nomeDisciplina VARCHAR(30) NOT NULL,

	PRIMARY KEY(codDisciplina)
);

CREATE TABLE AlunoDisciplina(
	matricula INT NOT NULL,
    codDisciplina INT NOT NULL,
    
    nota DECIMAL(2,1) NOT NULL,
    
    FOREIGN KEY (matricula) REFERENCES matricula(matricula),
    FOREIGN KEY (codDisciplina) REFERENCES disciplina(codDisciplina),

	PRIMARY KEY(matricula, codDisciplina)
);


-- Normalizada