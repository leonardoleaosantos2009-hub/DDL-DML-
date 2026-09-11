-- Define qual banco de dados será manipulado
Use varejo_db;

-- Insere dados na tabela de categorias
INSERT INTO categorias (nome, setor, descricao)
VALUES ('Eletrônicos', 'Tecnologias', 'Produtos eletrônicos e acessórios'),
	   ('Roupas', 'Moda', 'Vestuário masculino, feminino e infantil'),
	   ('Livros', 'Entretenimento', 'Livros de ficção e não-ficção'),
       ('Alimentos', 'Supermercado' ,'Comidas e bebidas em geral'),
	   ('Ferramentas', 'Casa e Jardim', 'Ferramentas manuais e elétricas');
       
INSERT INTO produtos (nome, preco, estoque, id_categoria)
VALUES ('Smartphone X100', 2500.00, 50, 1),
	   ('Notebook Pro', 5500.00, 25, 1),
	   ('Fone de Ouvido Bluetooth', 350.00, 120, 1),
       ('Teclado Mecânico', 450.00, 70, 1),
	   ('Camiseta Básica Branca', 70.00, 200, 2),
	   ('Calça Jeans Slim', 180.00, 150, 2),
	   ('Jaqueta de Couro', 700.00, 30, 2),
	   ('Aprenda SQL em 24h', 80.00, 40, 3),
	   ('O Senhor dos Anéis', 120.00, 60, 3),
	   ('Introdução ao Python', 95.00, 55, 3),
	   ('Pacote de Arroz 5kg', 30.00, 300, 4),
	   ('Azeite Extra Virgem', 45.00, 180, 4),
	   ('Mouse Gamer', 220.00, 0, 1); 
       
-- Atualiza o preço de um produto.
UPDATE produtos
SET preco = 2350.00
WHERE id = 1;

-- Atualiza o estoque do Smartphone X100 para 80 unidades.
Update produtos
SET estoque = 80
WHERE ID = 1;

-- Exclui o Mouse Gamer, pois está com o estoque zerado.
DELETE FROM produtos
WHERE id = 13;

-- Exclui a categoria 5
DELETE FROM categorias
WHERE id = 5;

-- Exibe todos os dados de todas as tabelas.
SELECT * FROM categorias;
SELECT * FROM produtos;
