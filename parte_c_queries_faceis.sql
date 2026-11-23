-- Parte C -- Queries fáceis (1-10)
-- Utilizar SELECT FROM, WHERE E ORDER BY.

-- 1. Listar todos os livros por ordem alfabética.
SELECT titulo FROM livro
ORDER BY titulo;

-- 2. Mostrar o nome dos autores.
SELECT nome_autor FROM autor
ORDER BY nome_autor;

-- 3. Listar todos os leitores.
SELECT nome_leitor, tipo_leitor
FROM leitor
ORDER BY tipo_leitor, nome_leitor;

-- 4. Mostrar livros da categoria "Informática".

-- Query para identificar o id da categoria
SELECT nome_categoria, id_categoria
FROM categoria
WHERE nome_categoria = 'Informática';

-- Consulta filtrando pelo id correspondente
SELECT id_categoria, titulo
FROM livro
WHERE id_categoria = 1 
ORDER BY titulo;

-- 5. Listar editoras existentes.
SELECT nome_editora
FROM editora
ORDER BY nome_editora;

-- 6. Mostrar leitores pertencentes ao curso de Engenharia Informática.

-- Query para identificar o id do curso
SELECT nome_curso, id_curso
FROM curso
WHERE nome_curso = 'Engenharia Informática';

-- Consulta filtrando pelo id correspondente
SELECT nome_leitor, id_curso
FROM leitor
WHERE id_curso = 1
ORDER BY nome_leitor;

-- 7. Listar livros publicados por uma determinada editora.
SELECT id_editora, nome_editora
FROM editora
WHERE nome_editora = 'Pearson';

-- Livros publicados pela editora Pearson de id = 13.
SELECT titulo, id_editora
FROM livro
WHERE id_editora = 13
ORDER BY titulo;

-- 8. Mostrar empréstimos ainda não devolvidos.
SELECT id_emprestimo, data_prevista_devolucao, data_devolucao
FROM emprestimo
WHERE data_devolucao IS NULL
ORDER BY data_prevista_devolucao;

-- 9. Listar categorias ordenadas pelo nome.
SELECT nome_categoria
FROM categoria
ORDER BY nome_categoria;

-- 10. Mostrar livros publicados após 2020.
SELECT titulo, data_publicacao
FROM livro
WHERE data_publicacao > '2020-12-31'
ORDER BY data_publicacao;
