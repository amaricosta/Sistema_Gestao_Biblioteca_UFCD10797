-- Parte E – Queries Difíceis (1-5)
-- Utilizar LIMIT, DENSE_RANK, Subconsultas, WITH(CTE), CURRENT_DATE e funções de data.

-- 1. Top 5 livros mais requisitados
SELECT l.titulo AS "Livro",
	COUNT(e.id_emprestimo) AS "Total Empréstimos"
FROM livro AS l
JOIN exemplar AS ex ON l.id_livro = ex.id_livro
JOIN emprestimo AS e ON ex.id_exemplar = e.id_exemplar
GROUP BY l.id_livro, l.titulo
ORDER BY "Total Empréstimos" DESC, "Livro" ASC 
LIMIT 5; -- Ordenação descendente e LIMIT para obter apenas o top 5

-- 2. Autor mais lido
-- Subconsulta para isolar a contagem da consulta principal
SELECT a.nome_autor AS "Autor",
	cont.total_emprestimos AS "Número de Empréstimos"
FROM autor AS a
JOIN (
	SELECT la.id_autor, COUNT(e.id_emprestimo) AS total_emprestimos
	FROM emprestimo AS e
	JOIN exemplar AS ex ON e.id_exemplar = ex.id_exemplar
	JOIN livro AS l ON ex.id_livro = l.id_livro
	JOIN livro_autor AS la ON l.id_livro = la.id_livro
	GROUP BY la.id_autor
) AS cont ON a.id_autor = cont.id_autor
ORDER BY "Número de Empréstimos" DESC
FETCH FIRST 1 ROW WITH TIES; -- Apresentar o autor mais lido e considerar empates 

-- 3. Curso com maior utilização da biblioteca
-- COUNT DISTINCT para evitar contagem duplicada de leitores que fizeram vários empréstimos
WITH utilizacao_curso AS (
	SELECT c.nome_curso AS "Curso",
		COUNT(DISTINCT lt.numero_utilizador) AS "Nº de Leitores",
		COUNT(e.id_emprestimo) AS "Nº de Empréstimos"
	FROM curso AS c
	JOIN leitor AS lt ON c.id_curso = lt.id_curso
	JOIN emprestimo AS e ON lt.numero_utilizador = e.numero_utilizador
	GROUP BY c.id_curso, c.nome_curso
)
SELECT "Curso", "Nº de Leitores", "Nº de Empréstimos"
FROM utilizacao_curso
ORDER BY "Nº de Empréstimos" DESC, "Nº de Leitores" DESC
FETCH FIRST 1 ROW WITH TIES; -- Considerar empates

-- 4. Leitores em atraso e valor da multa
-- CTE para isolar e calcular os dias de atraso e reutilizar na consulta principal no cálculo da multa
WITH dias_atraso AS (
	SELECT lt.nome_leitor AS "Leitor",
		l.titulo AS "Livro",
		(CURRENT_DATE - e.data_prevista_devolucao) AS "Dias"
	FROM leitor AS lt
	JOIN emprestimo AS e ON lt.numero_utilizador = e.numero_utilizador
	JOIN exemplar AS ex ON e.id_exemplar = ex.id_exemplar
	JOIN livro AS l ON ex.id_livro = l.id_livro
	WHERE e.data_devolucao IS NULL
		AND CURRENT_DATE > e.data_prevista_devolucao
)
SELECT "Leitor", "Livro", "Dias",
	ROUND("Dias" * 0.50, 2)::TEXT || ' €' AS "Multa"  -- Concatenação com ROUND precisa de conversão para texto
FROM dias_atraso
ORDER BY "Dias" DESC;


-- 5. Ranking das editoras
-- COUNT DISTINCT para evitar contagem duplicada devido aos exemplares
WITH contagens_editoras AS (
	SELECT ed.nome_editora AS "Editora",
		COUNT(DISTINCT l.id_livro) AS "Nº Livros",
		COUNT(e.id_emprestimo) AS "Nº Empréstimos"
	FROM editora AS ed
	LEFT JOIN livro AS l  ON ed.id_editora = l.id_editora
	LEFT JOIN exemplar AS ex ON l.id_livro = ex.id_livro
	LEFT JOIN emprestimo AS e ON ex.id_exemplar = e.id_exemplar
	GROUP BY ed.id_editora, ed.nome_editora
)
SELECT "Editora", "Nº Livros", "Nº Empréstimos",
	DENSE_RANK() OVER (ORDER BY "Nº Empréstimos" DESC, "Nº Livros" DESC) AS "Posição" 
FROM contagens_editoras
ORDER BY "Posição" ASC;
-- DENSE_RANK OVER para atribuir as posições sem saltos na numeração e ordenar por nº de empréstimos
-- e em caso de empate, por nº de livros. 