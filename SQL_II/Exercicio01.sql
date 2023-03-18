CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_personagens (
	id bigint auto_increment,
    nome varchar(255),
    poder varchar(255),
    elixir int,
    tipo varchar(255),
    PRIMARY KEY(id)
    );
    
    INSERT INTO tb_personagens (nome, poder, elixir, tipo)
    VALUES ("mosqueteira", "atirar", 4, "defesa");
     INSERT INTO tb_personagens (nome, poder, elixir, tipo)
    VALUES ("valquiria", "atirar", 4, "defesa e ataque");
     INSERT INTO tb_personagens (nome, poder, elixir, tipo)
    VALUES ("megacavaleiro", "esmagar", 7, "defesa e ataque");
    INSERT INTO tb_personagens (nome, poder, elixir, tipo)
    VALUES ("corredor", "correr", 4, "ataque");
	INSERT INTO tb_personagens (nome, poder, elixir, tipo)
    VALUES ("bebê dragão", "fogo", 4, "defesa aerea");
    
    
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
    
    SELECT * FROM tb_personagens;
    
    SELECT * FROM tb_classes;
    
    UPDATE tb_personagens set classe_id = 1 WHERE id = 1;
	UPDATE tb_personagens set classe_id = 2 WHERE id = 2;
	UPDATE tb_personagens set classe_id = 3 WHERE id = 3;
	UPDATE tb_personagens set classe_id = 4 WHERE id = 4;