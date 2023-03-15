CREATE DATABASE ecommerce_Luar;
USE ecommerce_Luar;

CREATE TABLE tb_produto(
	id bigint auto_increment,
	nome_produto varchar(255) not null,
    preco decimal,
	quantidade int,
    marca varchar(255),
    PRIMARY KEY(id)
    );
    
     INSERT INTO tb_produto(nome_produto,preco,quantidade,marca)
    VALUES ("TV 4k", 1580.00, 3, "LG");
    INSERT INTO tb_produto(nome_produto,preco,quantidade,marca)
    VALUES ("SOM", 320, 5, "JBL");
     INSERT INTO tb_produto(nome_produto,preco,quantidade,marca)
    VALUES ("Notebook", 3500, 7, "Dell");
     INSERT INTO tb_produto(nome_produto,preco,quantidade,marca)
    VALUES ("Smartphone", 3999, 4, "Apple");
     INSERT INTO tb_produto(nome_produto,preco,quantidade,marca)
    VALUES ("Jogo de Panelas", 290, 10, "TRAMONTINA");
    
    SELECT * FROM tb_produto WHERE preco > 500;
    
     SELECT * FROM tb_produto WHERE preco < 500;
     
     SET SQL_SAFE_UPDATES = 0;
     
     UPDATE tb_produto SET preco = 150 WHERE nome_produto = "Jogo de Panelas";