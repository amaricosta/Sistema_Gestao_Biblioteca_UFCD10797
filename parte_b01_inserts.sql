-- Sistema de Gestão de Biblioteca Universitária
-- Parte B 01 - Inserção de Dados: departamento, editora, categoria, autore, curso, livro, livro-autor, exemplar.

BEGIN;

-- Tabela Departamento
INSERT INTO departamento (nome_departamento) VALUES
('Engenharia'),
('Ciências Exatas'),
('Letras'),
('Medicina e Saúde'),
('Economia e Gestão'),
('Artes e Design'),
('Ciências Sociais'),
('Direito'),
('Psicologia');

-- Tabela Editora
INSERT INTO editora (nome_editora) VALUES
('Porto Editora'),
('Editorial Caminho'),
('Bertrand'),
('Gradiva'),
('Addison-Wesley'),
('MIT Press'),
('Springer'),
('Elsevier'),
('Cambridge University Press'),
('Oxford University Press'),
('Penguin Classics'),
('Palgrave Macmillan'),
('Pearson'),
('No Starch Press'),
('Cengage'),
('Círculo de Leitores'),
('Basic Books'),
('Coimbra Editora'),
('W. W. Norton'),
('Phaidon'),
('Prentice Hall'),
('Fundação Calouste Gulbenkian'),
('Assírio & Alvim'),
('Companhia das Letras'),
('Campus'),
('Livros do Brasil'),
('Bookman'),
('Livros Técnicos e Científicos'),
('LTC'),
('Cengage Learning'),
('Relógio D''Água'),
('Editorial Presença');

-- Tabela Categoria
INSERT INTO categoria (nome_categoria, descricao) VALUES
(
    'Informática',
    'Livros sobre programação, desenvolvimento de software, algoritmos, inteligência artificial, redes e tecnologias da informação.'
),
(
    'Economia',
    'Livros sobre economia, mercados, finanças, gestão e pensamento económico.'
),
(
    'História',
    'Obras sobre acontecimentos, períodos, sociedades e processos históricos.'
),
(
    'Medicina',
    'Livros relacionados com medicina, fisiologia, anatomia, saúde e ciências médicas.'
),
(
    'Literatura',
    'Obras literárias de diferentes géneros, períodos e tradições, incluindo romance, poesia e outros textos literários.'
),
(
    'Física',
    'Livros relacionados com matéria, energia, movimento, forças e fenómenos físicos.'
),
(
    'Matemática',
    'Livros sobre conceitos, métodos e aplicações matemáticas, incluindo cálculo, álgebra, estatística e lógica.'
),
(
    'Direito',
    'Obras relacionadas com legislação, sistemas jurídicos e diferentes áreas do Direito.'
),
(
    'Psicologia',
    'Obras relacionadas com comportamento humano, processos mentais, desenvolvimento e diferentes áreas da Psicologia.'
),
(
    'Filosofia',
    'Obras relacionadas com filosofia, ética, conhecimento, existência, política e pensamento filosófico.'
),
(
    'Arte',
    'Obras relacionadas com arte, estética, história da arte, design e expressão visual.'
);

-- Tabela Autor
INSERT INTO autor (nome_autor) VALUES
('Robert C. Martin'),
('Martin Fowler'),
('Linus Torvalds'),
('Adam Smith'),
('John Maynard Keynes'),
('Eric Hobsbawm'),
('José Saramago'),
('Fernando Pessoa'),
('Eça de Queirós'),
('John E. Hall'),
('Michael E. Hall'),
('Stephen Hawking'),
('Richard Feynman'),
('Philip Kotler'),
('Sigmund Freud'),
('Carl Jung'),
('Immanuel Kant'),
('Friedrich Nietzsche'),
('Platão'),
('Aristóteles'),
('Erich Gamma'),
('Richard Helm'),
('Ralph Johnson'),
('John Vlissides'),
('Thomas H. Cormen'),
('Charles E. Leiserson'),
('Ronald L. Rivest'),
('Clifford Stein'),
('Kevin Lane Keller'),
('Robert B. Leighton'),
('Matthew Sands'),
('Stuart Russell'),
('Peter Norvig'),
('Eric Matthes'),
('Al Sweigart'),
('David C. Lay'),
('Judi J. McDonald'),
('Steven R. Lay'),
('James F. Kurose'),
('Keith W. Ross'),
('José Mattoso'),
('David G. Myers'),
('Heinz-Dieter Ebbinghaus'),
('Jörg Flum'),
('Wolfgang Thomas'),
('Don Norman'),
('Jorge Miranda'),
('Pires de Lima'),
('João de Matos Antunes Varela'),
('M. Henrique Mesquita'),
('Morris H. DeGroot'),
('Mark J. Schervish'),
('E. H. Gombrich'),
('N. Gregory Mankiw'),
('James Stewart'),
('Richard L. Drake'),
('A. Wayne Vogl'),
('Adam W. M. Mitchell'),
('C. Nathan DeWall'),
('Elliott Mendelson'),
('Gilbert Strang'),
('Sílvio Marques A. Gama'),
('Alan Beaulieu'),
('Charles R. Severance'),
('Assembleia da República'),
('António Carvalho Pedrosa');

-- Tabela Curso
INSERT INTO curso (nome_curso, id_departamento) VALUES
('Engenharia Informática', 1),
('Engenharia Civil', 1),
('Engenharia Eletrotécnica', 1),
('Matemática Aplicada', 2),
('Física', 2),
('Línguas Modernas', 3),
('História', 3),
('Medicina', 4),
('Enfermagem', 4),
('Gestão de Empresas', 5),
('Economia', 5),
('Design de Comunicação', 6),
('Direito', 8);

-- Tabela Livro
INSERT INTO livro
(titulo, data_publicacao, id_editora, id_categoria)
VALUES

-- 1
(
    'Código Limpo: Um Manual de Estilo para o Desenvolvimento Ágil de Software',
    '2008-01-01',
    13,
    1
),

-- 2
(
    'Refatoração: Aperfeiçoando o Projeto de Código Existente',
    '2004-12-01',
    27,
    1
),

-- 3
(
    'Padrões de Projeto: Soluções Reutilizáveis de Software Orientado a Objetos',
    '2000-01-01',
    27,
    1
),

-- 4
(
    'Algoritmos: Teoria e Prática',
    '2002-01-01',
    8,
    1
),

-- 5
(
    'A Riqueza das Nações',
    '1776-03-09',
    11,
    2
),

-- 6
(
    'A Teoria Geral do Emprego, do Juro e da Moeda',
    '1936-02-04',
    11,
    2
),

-- 7
(
    'A Era dos Extremos: História Breve do Século XX, 1914-1991',
    '1994-01-01',
    17,
    3
),

-- 8
(
    'Ensaio sobre a Cegueira',
    '1995-01-01',
    2,
    5
),

-- 9
(
    'O Ano da Morte de Ricardo Reis',
    '1984-01-01',
    2,
    5
),

-- 10
(
    'Mensagem',
    '1934-12-01',
    23,
    5
),

-- 11
(
    'Os Maias',
    '1888-01-01',
    26,
    5
),

-- 12
(
    'Guyton e Hall: Tratado de Fisiologia Médica',
    '1956-01-01',
    8,
    4
),

-- 13
(
    'Uma Breve História do Tempo',
    '1988-01-01',
    4,
    6
),

-- 14
(
    'The Feynman Lectures on Physics',
    '1964-01-01',
    6,
    6
),

-- 15
(
    'Marketing Management',
    '1967-01-01',
    13,
    2
),

-- 16
(
    'O Mal-Estar na Civilização',
    '1930-01-01',
    11,
    9
),

-- 17
(
    'Código Civil Anotado',
    '1980-01-01',
    18,
    8
),

-- 18
(
    'A República',
    '0380-01-01',
    11,
    10
),

-- 19
(
    'Assim Falou Zaratustra',
    '1883-01-01',
    11,
    10
),

-- 20
(
    'Crítica da Razão Pura',
    '1781-01-01',
    11,
    10
),

-- 21
(
    'A História da Arte',
    '1950-01-01',
    20,
    11
),

-- 22
(
    'Learning SQL',
    '2005-01-01',
    13,
    1
),

-- 23
(
    'Inteligência Artificial: Uma Abordagem Moderna',
    '2022-08-11',
    29,
    1
),

-- 24
(
    'Redes de Computadores',
    '2017-01-01',
    13,
    1
),

-- 25
(
    'Princípios de Economia',
    '1998-01-01',
    15,
    2
),

-- 26
(
    'Macroeconomia',
    '2020-01-01',
    13,
    2
),

-- 27
(
    'História de Portugal',
    '1992-01-01',
    2,
    3
),

-- 28
(
    'Gray''s Anatomy for Students',
    '2004-01-01',
    8,
    4
),

-- 29
(
    'Psicologia',
    '2010-01-01',
    17,
    9
),

-- 30
(
    'Introduction to Mathematical Logic',
    '1960-01-01',
    19,
    7
),

-- 31
(
    'Cálculo',
    '1967-01-01',
    15,
    7
),

-- 32
(
    'Álgebra Linear',
    '1976-01-01',
    19,
    7
),

-- 33
(
    'The Design of Everyday Things',
    '1988-01-01',
    17,
    11
),

-- 34
(
    'Manual de Direito Constitucional',
    '1980-01-01',
    18,
    8
),

-- 35
(
    'Python para Todos: Explorando Dados com Python 3',
    '2020-01-01',
    25,
    1
);

-- Tabela Livro - Autor
INSERT INTO livro_autor (id_livro, id_autor) VALUES

-- 1. Código Limpo
(1, 1),

-- 2. Refatoração
(2, 2),

-- 3. Padrões de Projeto
(3, 21),
(3, 22),
(3, 23),
(3, 24),

-- 4. Algoritmos: Teoria e Prática
(4, 25),
(4, 26),
(4, 27),
(4, 28),

-- 5. A Riqueza das Nações
(5, 4),

-- 6. A Teoria Geral do Emprego
(6, 5),

-- 7. A Era dos Extremos
(7, 6),

-- 8. Ensaio sobre a Cegueira
(8, 7),

-- 9. O Ano da Morte de Ricardo Reis
(9, 7),

-- 10. Mensagem
(10, 8),

-- 11. Os Maias
(11, 9),

-- 12. Guyton e Hall
(12, 10),
(12, 11),

-- 13. Uma Breve História do Tempo
(13, 12),

-- 14. The Feynman Lectures on Physics
(14, 13),
(14, 30),
(14, 31),

-- 15. Marketing Management
(15, 14),
(15, 29),

-- 16. O Mal-Estar na Civilização
(16, 15),

-- 17. Código Civil Anotado
(17, 48),
(17, 49),
(17, 50),

-- 18. A República
(18, 19),

-- 19. Assim Falou Zaratustra
(19, 18),

-- 20. Crítica da Razão Pura
(20, 17),

-- 21. A História da Arte
(21, 53),

-- 22. Learning SQL
(22, 63),

-- 23. Inteligência Artificial: Uma Abordagem Moderna
(23, 32),
(23, 33),

-- 24. Redes de Computadores
(24, 39),
(24, 40),

-- 25. Princípios de Economia
(25, 54),

-- 26. Macroeconomia
(26, 54),

-- 27. História de Portugal
(27, 41),

-- 28. Gray's Anatomy for Students
(28, 56),
(28, 57),
(28, 58),

-- 29. Psicologia
(29, 42),

-- 30. Introduction to Mathematical Logic
(30, 60),

-- 31. Cálculo
(31, 55),

-- 32. Álgebra Linear
(32, 61),

-- 33. The Design of Everyday Things
(33, 46),

-- 34. Manual de Direito Constitucional
(34, 47),

-- 35. Python para Todos
(35, 64);

-- Tabela Exemplar
INSERT INTO exemplar (serie, status, id_livro) VALUES

-- Livro 1
('L001-E01', 'Disponível', 1),
('L001-E02', 'Disponível', 1),
('L001-E03', 'Disponível', 1),

-- Livro 2
('L002-E01', 'Disponível', 2),
('L002-E02', 'Disponível', 2),
('L002-E03', 'Disponível', 2),

-- Livro 3
('L003-E01', 'Disponível', 3),
('L003-E02', 'Disponível', 3),
('L003-E03', 'Disponível', 3),

-- Livro 4
('L004-E01', 'Disponível', 4),
('L004-E02', 'Disponível', 4),
('L004-E03', 'Disponível', 4),

-- Livro 5
('L005-E01', 'Disponível', 5),
('L005-E02', 'Disponível', 5),
('L005-E03', 'Disponível', 5),

-- Livro 6
('L006-E01', 'Disponível', 6),
('L006-E02', 'Disponível', 6),
('L006-E03', 'Disponível', 6),

-- Livro 7
('L007-E01', 'Disponível', 7),
('L007-E02', 'Disponível', 7),
('L007-E03', 'Disponível', 7),

-- Livro 8
('L008-E01', 'Disponível', 8),
('L008-E02', 'Disponível', 8),
('L008-E03', 'Disponível', 8),

-- Livro 9
('L009-E01', 'Disponível', 9),
('L009-E02', 'Disponível', 9),
('L009-E03', 'Disponível', 9),

-- Livro 10
('L010-E01', 'Disponível', 10),
('L010-E02', 'Disponível', 10),
('L010-E03', 'Disponível', 10),

-- Livro 11
('L011-E01', 'Disponível', 11),
('L011-E02', 'Disponível', 11),
('L011-E03', 'Disponível', 11),

-- Livro 12
('L012-E01', 'Disponível', 12),
('L012-E02', 'Disponível', 12),
('L012-E03', 'Disponível', 12),

-- Livro 13
('L013-E01', 'Disponível', 13),
('L013-E02', 'Disponível', 13),
('L013-E03', 'Disponível', 13),

-- Livro 14
('L014-E01', 'Disponível', 14),
('L014-E02', 'Disponível', 14),
('L014-E03', 'Disponível', 14),

-- Livro 15
('L015-E01', 'Disponível', 15),
('L015-E02', 'Disponível', 15),
('L015-E03', 'Disponível', 15),

-- Livro 16
('L016-E01', 'Disponível', 16),
('L016-E02', 'Disponível', 16),
('L016-E03', 'Disponível', 16),

-- Livro 17
('L017-E01', 'Disponível', 17),
('L017-E02', 'Disponível', 17),
('L017-E03', 'Disponível', 17),

-- Livro 18
('L018-E01', 'Disponível', 18),
('L018-E02', 'Disponível', 18),
('L018-E03', 'Disponível', 18),

-- Livro 19
('L019-E01', 'Disponível', 19),
('L019-E02', 'Disponível', 19),
('L019-E03', 'Disponível', 19),

-- Livro 20
('L020-E01', 'Disponível', 20),
('L020-E02', 'Disponível', 20),
('L020-E03', 'Disponível', 20),

-- Livro 21
('L021-E01', 'Disponível', 21),
('L021-E02', 'Disponível', 21),
('L021-E03', 'Disponível', 21),

-- Livro 22
('L022-E01', 'Disponível', 22),
('L022-E02', 'Disponível', 22),
('L022-E03', 'Disponível', 22),

-- Livro 23
('L023-E01', 'Disponível', 23),
('L023-E02', 'Disponível', 23),
('L023-E03', 'Disponível', 23),

-- Livro 24
('L024-E01', 'Disponível', 24),
('L024-E02', 'Disponível', 24),
('L024-E03', 'Disponível', 24),

-- Livro 25
('L025-E01', 'Disponível', 25),
('L025-E02', 'Disponível', 25),
('L025-E03', 'Disponível', 25),

-- Livro 26
('L026-E01', 'Disponível', 26),
('L026-E02', 'Disponível', 26),
('L026-E03', 'Disponível', 26),

-- Livro 27
('L027-E01', 'Disponível', 27),
('L027-E02', 'Disponível', 27),
('L027-E03', 'Disponível', 27),

-- Livro 28
('L028-E01', 'Disponível', 28),
('L028-E02', 'Disponível', 28),
('L028-E03', 'Disponível', 28),

-- Livro 29
('L029-E01', 'Disponível', 29),
('L029-E02', 'Disponível', 29),
('L029-E03', 'Disponível', 29),

-- Livro 30
('L030-E01', 'Disponível', 30),
('L030-E02', 'Disponível', 30),
('L030-E03', 'Disponível', 30),

-- Livro 31
('L031-E01', 'Disponível', 31),
('L031-E02', 'Disponível', 31),
('L031-E03', 'Disponível', 31),

-- Livro 32
('L032-E01', 'Disponível', 32),
('L032-E02', 'Disponível', 32),
('L032-E03', 'Disponível', 32),

-- Livro 33
('L033-E01', 'Disponível', 33),
('L033-E02', 'Disponível', 33),
('L033-E03', 'Disponível', 33),

-- Livro 34
('L034-E01', 'Disponível', 34),
('L034-E02', 'Disponível', 34),
('L034-E03', 'Disponível', 34),

-- Livro 35
('L035-E01', 'Disponível', 35),
('L035-E02', 'Disponível', 35),
('L035-E03', 'Disponível', 35);

COMMIT;