USE escola_db;

-- Exercicio 1

INSERT INTO aluno (nome, matricula, turma, nascimento, email)
VALUES ('Ana Beatriz Souza', 2024001, '1A', '2008-03-15', 'ana.souza@aluno.escola.com'),
('Bruno Henrique Lima', 2024002, '1A', '2008-07-22','bruno.lima@aluno.escola.com'),
('Carla Fernandes Rocha', 2024003, '1B', '2007-11-5', 'carla.rocha@aluno.escola.com'),
('Diego Martins Alves', 2024004, '1B', '2008-01-30', 'diego.alves@aluno.escola.com'),
('Eduarda Pires Costa', 2024005, '2A', '2007-05-18', 'eduarda.costa@aluno.escola.com'),
('Felipe Augusto Silva', 2024006, '2A', '2007-09-09', 'felipe.silva@aluno.escola.com'),
('Gabriela Nunes Dias', 2024007, '2B', '2007-12-25', 'gabriela.dias@aluno.escola.com'),
('Henrique Barbosa Melo', 2024008, '2B', '2008-02-14', 'henrique.melo@aluno.escola.com');

SELECT * FROM aluno;

-- Exercicio 2

INSERT INTO nota (id_aluno, disciplina, valor, bimestre)
VALUES (1, 'Matemática', 8.5, 1),
(2, 'Português', 7.0, 1),
(3, 'Matemática', 9.2, 1),
(4, 'Ciências', 6.5, 1),
(5, 'Português', 8.0, 2),
(6, 'Matemática', 5.5, 2),
(7, 'Ciências', 9.0, 2),
(8, 'Português', 7.8, 2);

SELECT * FROM nota;

-- Exercicio 3 

UPDATE aluno
SET turma = '1B'
WHERE id = 1;

UPDATE aluno
SET turma = '2C'
WHERE id = 7;

UPDATE aluno
SET turma = '2C'
WHERE id = 8;

UPDATE nota 
SET valor = '7.5'
WHERE id = 6;

UPDATE nota 
SET valor = 7
WHERE id = 4;

-- Exercicio 4

DELETE FROM nota
WHERE id = 8;
