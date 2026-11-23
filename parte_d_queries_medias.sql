-- Parte D -- Queries médias (1-10)
-- Utilizar JOIN, GROUP BY, COUNT() e HAVING.

-- 1. Mostrar o nome do leitor e os livros que requisitou.
-- JOIN para apresentar leitores que efetivamente requisitaram livros
SELECT DISTINCT lt.numero_utilizador AS "Nº Utilizador",
	lt.nome_leitor AS "Leitor",
	l.titulo AS "Livro"
FROM leitor AS lt
JOIN emprestimo AS e ON lt.numero_utilizador = e.numero_utilizador
JOIN exemplar AS ex ON e.id_exemplar = ex.id_exemplar
JOIN livro AS l ON ex.id_livro = l.id_livro
ORDER BY "Leitor";

-- 2. Listar livros e respetiva editora.
-- JOIN - um livro tem obrigatoriamente uma editora associada
SELECT l.titulo AS "Livro", ed.nome_editora AS "Editora"
FROM livro AS l
JOIN editora AS ed ON l.id_editora = ed.id_editora
ORDER BY "Editora", "Livro";

-- 3. Mostrar autores de cada livro.
-- JOIN - Um livro publicado tem sempre um autor
SELECT l.titulo AS "Livro", a.nome_autor AS "Autor"
FROM livro AS l
JOIN livro_autor AS la ON l.id_livro = la.id_livro
JOIN autor AS a ON la.id_autor = a.id_autor
ORDER BY "Livro", "Autor";

-- 4. Contar quantos livros existem por categoria.
-- LEFT JOIN para apresentar eventuais categorias que ainda não têm livros associados
SELECT ca.nome_categoria AS "Categoria",
	COUNT(l.id_categoria) AS "Total de Livros"
FROM categoria AS ca
LEFT JOIN livro AS l ON ca.id_categoria = l.id_categoria
GROUP BY ca.id_categoria, ca.nome_categoria
ORDER BY "Total de Livros" DESC;

-- 5. Contar leitores por curso.
-- LEFT JOIN para incluir cursos sem leitores registados
SELECT c.nome_curso AS "Curso",
	COUNT(lt.id_curso) AS "Total de Leitores"
FROM curso AS c
LEFT JOIN leitor AS lt ON c.id_curso = lt.id_curso
GROUP BY c.id_curso, c.nome_curso
ORDER BY "Total de Leitores" DESC;

-- 6. Número de empréstimos realizados por cada leitor.
-- LEFT JOIN para incluir leitores que nunca requisitaram livros
SELECT lt.nome_leitor AS "Leitor",
	COUNT(e.numero_utilizador) AS "Total de Empréstimos"
FROM leitor AS lt
LEFT JOIN emprestimo AS e ON lt.numero_utilizador = e.numero_utilizador
GROUP BY lt.numero_utilizador, lt.nome_leitor
ORDER BY "Total de Empréstimos" DESC, "Leitor" ASC;

-- 7. Mostrar livros nunca requisitados.
-- LEFT JOIN para apresentar todos os registos
SELECT l.titulo AS "Livro"
FROM livro AS l
LEFT JOIN exemplar AS ex ON l.id_livro = ex.id_livro
LEFT JOIN emprestimo AS e ON ex.id_exemplar = e.id_exemplar
GROUP BY l.id_livro, l.titulo
HAVING (COUNT(e.id_exemplar) = 0);

-- 8. Mostrar leitores com mais de 3 empréstimos.
-- JOIN - para considerar apenas leitores com empréstimos registados
SELECT lt.nome_leitor AS "Leitor",
	COUNT(e.numero_utilizador) AS "Total de Empréstimos"
FROM leitor AS lt
JOIN emprestimo AS e ON lt.numero_utilizador = e.numero_utilizador
GROUP BY lt.numero_utilizador, lt.nome_leitor
HAVING (COUNT(e.numero_utilizador)> 3)
ORDER BY "Total de Empréstimos" DESC, "Leitor" ASC;

-- 9. Contar livros por editora.
-- LEFT JOIN para apresentar editoras que eventualmente ainda não têm livros associados
SELECT ed.nome_editora AS "Editora",
	COUNT(l.id_editora) AS "Total de Livros"
FROM editora AS ed
LEFT JOIN livro AS l ON ed.id_editora = l.id_editora
GROUP BY ed.id_editora, ed.nome_editora
ORDER BY "Total de Livros" DESC, "Editora" ASC;

-- 10. Mostrar quantidade de livros escritos por cada autor.
-- LEFT JOIN para apresentar autores que eventualmente ainda não foram associados a um livro
SELECT a.nome_autor AS "Autor",
	COUNT(la.id_autor) AS "Total de Livros"
FROM autor AS a
LEFT JOIN livro_autor AS la ON a.id_autor = la.id_autor
GROUP BY a.id_autor, a.nome_autor
ORDER BY "Total de Livros" DESC, "Autor" ASC;
