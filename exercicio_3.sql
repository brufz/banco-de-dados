CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_escola (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    rh INT,
    curso VARCHAR(255),
    semestre INT,
    nota DECIMAL(2,1)
);

SELECT * FROM tb_escola;
INSERT INTO tb_escola (nome, rh, curso, semestre, nota) VALUES ("Pedro", 8089, "Engenharia química", 9, 5.5);

SELECT * FROM tb_escola WHERE nota > 7.0;

SELECT * FROM tb_escola WHERE nota < 7.0;

UPDATE tb_escola
SET curso = "História"
WHERE id = 6;

