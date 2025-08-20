CREATE SCHEMA sistema_cadastro;
use sistema_cadastro; 

--AQUI NO use eu seleciono o SCHEMA q eu vou usar

CREATE TABLE mae( 
	--O create serve para criar a tabela
	id int not null auto_increment,
    -- A ordem dos modificadores não importa
    nome varchar(100) not null,
    primary key(id)
    
    --a definição da primary key só fica no final por clareza
);

CREATE TABLE filho (
	id int not null auto_increment,
    nome varchar(100) not null,
    data_nascimento datetime,
    -- 2025-02-31 12:00:00
    estar_vivo boolean,
    nasceu_careca boolean,
    peso decimal(6,2),
    --primeiro vem o numero de casas antes da virgula e depois as casas apos a virgula
    mae_id int not null,
    
    primary key (id),
    
    constraint fk_id_mae foreign key(mae_id) references mae(id)
    --para fazer a ligacao entre o id mae do filho com o id da mae mesmo 
);

select * from mae;
select * from filho;
