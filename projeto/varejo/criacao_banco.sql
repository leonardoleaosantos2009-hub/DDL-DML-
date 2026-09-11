-- Cria o banco de dados.
CREATE DATABASE varejo_db;

-- Define qual banco de dados será usado.
USE varejo_db;

-- Tabela que armazena os tipos (categorias) de produtos.
CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    setor VARCHAR(50),
    descricao TEXT
);

-- Tabela que armazena os produtos individuais.
CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_categoria INT,
    nome VARCHAR(150) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0,
    
    -- Chave Estrangeira que liga o produto à sua categoria.
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);
