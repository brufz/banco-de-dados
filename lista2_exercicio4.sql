CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_pizza VARCHAR(255),
    alergenos_pizza VARCHAR(255)
);
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor_pizza VARCHAR(255),
	tamanho_pizza VARCHAR(255),
    valor_pizza DECIMAL(3,2),
    id_categoria BIGINT
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (categoria_pizza, alergenos_pizza) VALUES ("com carne", "com lactose");
INSERT INTO tb_categorias (categoria_pizza, alergenos_pizza) VALUES ("vegana", "sem alérgenos");
INSERT INTO tb_categorias (categoria_pizza, alergenos_pizza) VALUES ("com frutos do mar", "com lactose, com peixe");
INSERT INTO tb_categorias (categoria_pizza, alergenos_pizza) VALUES ("vegetariana", "com lactose");
INSERT INTO tb_categorias (categoria_pizza, alergenos_pizza) VALUES ("doce", "com lactose");

SELECT * FROM tb_pizzas;
INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("calabresa", "8 pedaços", 5.00, 1);

ALTER TABLE tb_pizzas
DROP COLUMN valor_pizza;

ALTER TABLE tb_pizzas
ADD valor_pizza DECIMAL (10,2);

INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("atum", "8 pedaços", 35.00, 3);
INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("prestígio", "4 pedaços", 29.00, 5);
INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("brócolis", "8 pedaços", 40.00, 2);
INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("palmito", "8 pedaços", 50.00, 4);
INSERT INTO tb_pizzas (sabor_pizza, tamanho_pizza, valor_pizza, id_categoria) VALUES ("rúcula com mússarela de búfala", "6 pedaços", 32.90, 4);

UPDATE tb_pizzas
SET valor_pizza = 52.30
WHERE id = 1;

SELECT * FROM tb_pizzas WHERE valor_pizza > 45.00;
SELECT * FROM tb_pizzas WHERE valor_pizza > 50.00 AND valor_pizza < 100.00;
SELECT * FROM tb_pizzas WHERE sabor_pizza LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.id_categoria;

SELECT * FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.id = tb_pizzas.id_categoria AND tb_categorias.categoria_pizza = "vegana";