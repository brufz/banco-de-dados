CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
	id BIGINT auto_increment PRIMARY KEY,
    nome_categoria VARCHAR(255),
    tarja_categoria VARCHAR(255)
    
);

CREATE TABLE tb_produtos(
	id BIGINT auto_increment PRIMARY KEY,
    nome_produto VARCHAR (255),
    marca_produto VARCHAR(255),
    quantidade_estoque INT,
    categoria_id BIGINT,

	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

INSERT INTO tb_categorias(nome_categoria, tarja_categoria) VALUES ("analgésicos","sem tarja");
INSERT INTO tb_categorias(nome_categoria, tarja_categoria) VALUES ("anti-ácido","sem tarja");
INSERT INTO tb_categorias(nome_categoria, tarja_categoria) VALUES ("anti-hipertensivo","tarja amarela");
INSERT INTO tb_categorias(nome_categoria, tarja_categoria) VALUES ("anti-inflamatórios","tarja vermelha");
INSERT INTO tb_categorias(nome_categoria, tarja_categoria) VALUES ("psicotrópicos","tarja preta");

ALTER TABLE tb_produtos
ADD valor_produto DECIMAL(10,2);

INSERT INTO tb_produtos(nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("nimesulida", "genérico", 3590, 4, 35.70);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("cimegripe", "cimed", 1000, 1, 4.35);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("paracetamol", "genérico", 10590, 1, 10.90);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("diazepam", "vallium", 232, 5, 192.90);
INSERT INTO tb_produtos(nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("lorazepam", "EMS", 35, 5, 92.00);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("felodipino", "azmed", 132, 2, 20.70);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("dipirona", "genérico", 105, 1, 10.30);
INSERT INTO tb_produtos (nome_produto, marca_produto, quantidade_estoque, categoria_id, valor_produto) VALUES ("nimodipino", "EMS", 1000, 1, 32.80);

SELECT * FROM tb_produtos WHERE valor_produto > 50.00;
SELECT * FROM tb_produtos WHERE valor_produto > 5.00 AND valor_produto < 60.00;
SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_categorias INNER JOIN tb_produtos
ON tb_categorias.id = tb_produtos.categoria_id AND tb_categorias.nome_categoria = "analgésicos";
