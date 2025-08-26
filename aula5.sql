create table pedido(
	id int not null auto_increment primary key,
    id_cliente int not null,
    data_venda datetime,

	-- primary key (id)
);

create table pedidoItens(
	id_pedido int not null,
    id_produto int not null,
    
    -- por que eu não coloquei auto_increment? -> porque é algo que não é incrementado -> 
    -- tem que estar relacionado com alguem que ja existe
    
    quantidade int not null,
    total_do_produto decimal(10,2),

	primary key (id_pedido, id_produto)
);

create table logs_de_venda(
	id_pedido int not null,
    id_produto int not null,
    quantidade int not null,
    
    constraint nome_da_constraint
		foreign key (id_pedido, id_produto)
        references PedidoItens(id_pedido, id_produto)
	
);
