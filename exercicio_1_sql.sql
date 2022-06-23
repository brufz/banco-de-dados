-- cria o banco de dados
CREATE DATABASE db_rhgeneration;
-- usar o banco de dados
USE db_rhgeneration;
-- criar tabela
CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    salario DECIMAL(9,2),
    setor VARCHAR(255),
    matricula INT
);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios(nome, salario, setor, matricula) VALUES ("Wan", 10000.60, "Tecnologia", 03);

UPDATE tb_funcionarios 
SET nome = "Marcelo"
WHERE id = 2;

UPDATE tb_funcionarios
SET matricula = 4
WHERE id = 2;

SET SQL_SAFE_UPDATES = 1;

DELETE FROM tb_funcionarios
WHERE id = 3;

SELECT * FROM tb_funcionarios WHERE salario > 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

SELECT id, nome, setor, MAX(salario) AS MaiorSalario FROM tb_funcionarios;
