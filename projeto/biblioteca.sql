-- Cria o banco de dados.
-- Tem que ter ; no final (indica que o comando acabou)
-- Sempre leia o Output
-- deu certo (é o certinho, vede)
-- com exclamação (é quando deu certo, mas com algum erro de código)
-- com X (quando deu errado)
CREATE DATABASE IF NOT EXISTS nova_biblioteca_db;

-- Define o uso do banco de dados.
USE nova_biblioteca_db;

-- Cria a tabela de leitoes
-- É obrigatório que toda chave primária seja AUTO INCREMENTO
-- Virgula é o que separa um campo do outro
-- Ultimo nao tem virgula
-- Sempre salve depois do ;
-- No MySQL possui uma variavel que é especifica para ANOS
-- Sempre crie primeiro as tabelas que não tem chave estrangeira
CREATE TABLE IF NOT EXISTS leitor(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
cpf VARCHAR (20) NOT NULL,
nascimento DATE NOT NULL,
email VARCHAR(50) NOT NULL,
telefone VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS livro(
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100) NOT NULL,
autor VARCHAR (75) NOT NULL,
genero VARCHAR (25) NOT NULL,
isbn VARCHAR(20) NOT NULL,
paginas INT NULL,
ano_publicacao YEAR NOT NULL
);

-- Cria a tabela de empréstimos
CREATE TABLE IF NOT EXISTS emprestimos(
id INT AUTO_INCREMENT PRIMARY KEY,
id_leitor INT NOT NULL,
id_livro INT NOT NULL,
data_emprestimo DATETIME NOT NULL,
data_devolucao DATETIME NOT NULL,

-- Definição das chaves-estrangeiras.
-- primeiro parenteses - campo da tabela empréstimos (tabela com relação), depois faz referencia à tabela e no segundo parênteses ao campo da tabela, respectivamente.
FOREIGN KEY (id_leitor) REFERENCES leitor (id),
FOREIGN KEY (id_livro) REFERENCES livro (id)
);
