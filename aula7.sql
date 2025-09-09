CREATE SCHEMA sistema_turma_d;
USE sistema_turma_d;

CREATE TABLE pessoas (
	id int auto_increment primary key,
    nome varchar(20),
    esta_vivo boolean default(1),
    data_cadastro datetime default(CURRENT_TIMESTAMP),
    tipo_pessoa ENUM('PF', 'PJ'), -- Serve para eu restringir as opções do que vai entrar, ou entra PJ ou entra PF, se eu colocar algo fora disso na instancia, ele vai sumir com o valor
	email varchar(50),
    
    unique key uk_nome_da_regra (email, esta_vivo)
);