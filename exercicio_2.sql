CREATE DATABASE db_ecommerce1;
USE db_ecommerce1;

CREATE TABLE tb_ecommerce (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
produto VARCHAR(255),
marca VARCHAR (255),
quantidade INT,
valor DECIMAL(10,2)
);

SELECT * FROM tb_ecommerce;

INSERT INTO tb_ecommerce(produto,marca,quantidade,valor) VALUES ("apontador", "faber", 400, 3.20);

UPDATE tb_ecommerce
SET produto = "borracha"
WHERE id = 5;

SELECT * FROM tb_ecommerce WHERE valor > 500;

SELECT * FROM tb_ecommerce WHERE valor < 500;

UPDATE tb_ecommerce
SET valor = 1.40
WHERE id = 2;