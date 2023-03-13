CREATE DATABASE rh_empresa;
USE rh_empresa;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
	nome varchar(255) not null,
    telefone varchar(15),
	salario decimal,
    dataContratacao date,
    PRIMARY KEY(id)
    );
    
INSERT INTO tb_colaboradores(nome, telefone, salario, dataContratacao)
VALUES("Thayane", "(11) 99999-9999", 2500.00, "2023-01-31");
INSERT INTO tb_colaboradores(nome, telefone, salario, dataContratacao)
VALUES("Paulo", "(11) 99999-9999", 2300.00, "2022-01-31");
INSERT INTO tb_colaboradores(nome, telefone, salario, dataContratacao)
VALUES("Maria", "(11) 77777-7777", 1820.00, "2020-01-25");
INSERT INTO tb_colaboradores(nome, telefone, salario, dataContratacao)
VALUES("João", "(12) 55555-5555", 1500.00, "2022-02-08");
INSERT INTO tb_colaboradores(nome, telefone, salario, dataContratacao)
VALUES("Julia", "(13) 22222-2222", 2200.00, "2021-03-15");

SELECT * FROM tb_colaboradores WHERE salario < 2000;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_colaboradores SET telefone = "(13)22222-5555" WHERE nome = "Julia";

SET SQL_SAFE_UPDATES = 1;

