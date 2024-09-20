CREATE DATABASE exemplo_1e;

#Criar tabela produtos
CREATE TABLE produtos (
   cod_prod integer PRIMARY KEY,
   nome varchar(30),
   preco numeric(10,2)
);

CREATE TABLE pedidos (
  cod_pedido integer PRIMARY KEY,
  cod_prod integer,
  quantidade integer,
  FOREIGN KEY(cod_prod) REFERENCES produtos(cod_prod)
);