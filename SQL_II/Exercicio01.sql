CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
	id bigint auto_increment,
    nome varchar(255) not null,
    poder_ataque int not null,
    poder_defesa int not null,
    elixir int,
    PRIMARY KEY(id)
    );
       
  CREATE TABLE tb_classes (
	id bigint auto_increment,
    nivel int,
    dificuldade varchar(255),
    PRIMARY KEY (id)
    );
    
    INSERT INTO tb_classes (nivel, dificuldade)
    VALUES (5, "média");
    INSERT INTO tb_classes (nivel, dificuldade)
    VALUES (4, "média");
    INSERT INTO tb_classes (nivel, dificuldade)
    VALUES (8, "difícil");
    INSERT INTO tb_classes (nivel, dificuldade)
    VALUES (3, "média");
    
    ALTER TABLE tb_personagens ADD classe_id bigint;
    
    ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id);
    
     
    INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, elixir,classe_id)
    VALUES ("mosqueteira", 1000,3000, 4,1);
     INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, elixir,classe_id)
    VALUES ("valquiria", 4000,4000, 4, 2);
     INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, elixir,classe_id)
    VALUES ("megacavaleiro",5000,3000, 7,3);
    INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, elixir,classe_id)
    VALUES ("corredor", 4000,0,4,4);
	INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, elixir,classe_id)
    VALUES ("bebê dragão",1000,3000,4,4);
    
    SELECT * FROM tb_personagens where poder_ataque > 2000;
    
    SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;
    
    SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.dificuldade = "média";
    
  