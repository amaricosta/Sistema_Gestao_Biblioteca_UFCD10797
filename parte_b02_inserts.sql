-- Sistema de Gestão de Biblioteca Universitária
-- Parte B 02 - Inserção de Dados: leitor, emprestimo e reserva.

BEGIN;

-- Tabela Leitor
INSERT INTO
	LEITOR (
		NOME_LEITOR,
		EMAIL,
		DATA_NASCIMENTO,
		TIPO_LEITOR,
		DATA_CADASTRO,
		ID_CURSO
	)
VALUES
	(
		'Ana Silva',
		'ana.silva@universidade.pt',
		'1986-06-09',
		'Estudante',
		'2023-09-15',
		3
	),
	(
		'João Pereira',
		'joao.pereira@universidade.pt',
		'1989-10-18',
		'Estudante',
		'2023-09-02',
		5
	),
	(
		'Maria Santos',
		'maria.santos@universidade.pt',
		'1976-11-20',
		'Estudante',
		'2023-09-11',
		4
	),
	(
		'Pedro Costa',
		'pedro.costa@universidade.pt',
		'1998-03-24',
		'Estudante',
		'2023-09-16',
		3
	),
	(
		'Inês Rodrigues',
		'ines.rodrigue@universidade.pt',
		'2002-12-16',
		'Estudante',
		'2023-09-02',
		6
	),
	(
		'Rui Fernandes',
		'rui.fernandes@universidade.pt',
		'2002-07-28',
		'Docente',
		'2023-09-17',
		11
	),
	(
		'Beatriz Pinto',
		'beatriz.pinto@universidade.pt',
		'1991-03-23',
		'Estudante',
		'2023-09-18',
		6
	),
	(
		'Carlos Martins',
		'carlos.martins@universidade.pt',
		'1982-12-02',
		'Estudante',
		'2023-09-01',
		11
	),
	(
		'Diana Oliveira',
		'diana.oliveira@universidade.pt',
		'2003-01-07',
		'Estudante',
		'2023-09-11',
		2
	),
	(
		'Miguel Sousa',
		'miguel.sousa@universidade.pt',
		'1987-10-11',
		'Estudante',
		'2023-09-18',
		2
	),
	(
		'Sofia Ribeiro',
		'sofia.ribeiro@universidade.pt',
		'1991-04-20',
		'Estudante',
		'2023-09-21',
		1
	),
	(
		'Tiago Carvalho',
		'tiago.carvalho@universidade.pt',
		'1996-03-27',
		'Docente',
		'2023-09-11',
		6
	),
	(
		'Laura Almeida',
		'laura.almeida@universidade.pt',
		'1992-06-25',
		'Estudante',
		'2023-09-14',
		3
	),
	(
		'Gonçalo Marques',
		'goncalo.marques@universidade.pt',
		'1995-10-18',
		'Estudante',
		'2023-09-24',
		4
	),
	(
		'Catarina Alves',
		'catarina.alves@universidade.pt',
		'1996-02-14',
		'Estudante',
		'2023-09-24',
		13
	),
	(
		'José Meireles',
		'jose.meireles@universidade.pt',
		'1990-10-09',
		'Estudante',
		'2023-09-18',
		13
	),
	(
		'Francisca Lima',
		'francisca.lima@universidade.pt',
		'1988-12-25',
		'Estudante',
		'2023-09-26',
		5
	),
	(
		'António Rocha',
		'antonio.rocha@universidade.pt',
		'1983-05-18',
		'Docente',
		'2023-09-04',
		3
	),
	(
		'Leonor Fonseca',
		'leonor.fonseca@universidade.pt',
		'1981-12-16',
		'Estudante',
		'2023-09-03',
		6
	),
	(
		'Vasco Guedes',
		'vasco.guedes@universidade.pt',
		'1997-12-14',
		'Estudante',
		'2023-09-07',
		9
	),
	(
		'Mariana Teixeira',
		'mariana.teixeira@universidade.pt',
		'1990-11-20',
		'Estudante',
		'2023-09-08',
		6
	),
	(
		'Afonso Cruz',
		'afonso.cruz@universidade.pt',
		'1999-01-20',
		'Estudante',
		'2023-09-13',
		4
	),
	(
		'Matilde Correia',
		'matilde.correia@universidade.pt',
		'1999-06-13',
		'Estudante',
		'2023-09-08',
		13
	),
	(
		'Guilherme Silva',
		'guilherme.silva@universidade.pt',
		'1979-05-18',
		'Estudante',
		'2023-09-29',
		13
	),
	(
		'Beatriz Santos',
		'beatriz.santos@universidade.pt',
		'1996-05-27',
		'Docente',
		'2023-09-04',
		7
	),
	(
		'Ricardo Jorge',
		'ricardo.jorge@universidade.pt',
		'1977-10-22',
		'Estudante',
		'2023-09-12',
		9
	),
	(
		'Patrícia Antunes',
		'patricia.antunes@universidade.pt',
		'1992-05-16',
		'Estudante',
		'2023-09-02',
		5
	),
	(
		'Nuno Gomes',
		'nuno.gomes@universidade.pt',
		'1992-05-24',
		'Docente',
		'2023-09-02',
		5
	),
	(
		'Margarida Lopes',
		'margarida.lopes@universidade.pt',
		'1994-09-15',
		'Estudante',
		'2023-09-14',
		9
	),
	(
		'Diogo Ferreira',
		'diogo.ferreira@universidade.pt',
		'1991-03-03',
		'Estudante',
		'2023-09-14',
		4
	),
	(
		'Afonso Moreira',
		'afonso.moreira@universidade.pt',
		'2001-04-12',
		'Estudante',
		'2024-02-10',
		1
	),
	(
		'Bárbara Silva',
		'barbara.silva@universidade.pt',
		'2002-09-22',
		'Estudante',
		'2024-02-15',
		1
	),
	(
		'Cláudio Ramos',
		'claudio.ramos@universidade.pt',
		'2000-11-05',
		'Estudante',
		'2024-02-20',
		1
	),
	(
		'Daniela Fonseca',
		'daniela.fonseca@universidade.pt',
		'1999-03-30',
		'Estudante',
		'2024-03-01',
		1
	),
	(
		'Eduardo Neto',
		'eduardo.neto@universidade.pt',
		'1985-07-14',
		'Docente',
		'2024-03-12',
		1
	),
	(
		'Fernanda Cruz',
		'fernanda.cruz@universidade.pt',
		'2003-01-25',
		'Estudante',
		'2024-03-15',
		1
	),
	(
		'Gabriel Sousa',
		'gabriel.sousa@universidade.pt',
		'2002-06-18',
		'Estudante',
		'2024-04-02',
		1
	),
	(
		'Helena Matos',
		'helena.matos@universidade.pt',
		'2001-12-01',
		'Estudante',
		'2024-04-10',
		1
	),
	(
		'Igor Guimarães',
		'igor.guimaraes@universidade.pt',
		'1990-05-24',
		'Docente',
		'2024-04-15',
		1
	),
	(
		'Joana Antunes',
		'joana.antunes@universidade.pt',
		'2002-08-11',
		'Estudante',
		'2024-01-20',
		6
	),
	(
		'Kevin Pires',
		'kevin.pires@universidade.pt',
		'2003-10-04',
		'Estudante',
		'2024-02-02',
		6
	),
	(
		'Larissa Mendes',
		'larissa.mendes@universidade.pt',
		'2001-05-19',
		'Estudante',
		'2024-02-18',
		6
	),
	(
		'Manel Faustino',
		'manel.faustino@universidade.pt',
		'1982-11-30',
		'Docente',
		'2024-03-05',
		6
	),
	(
		'Nádia Carvalho',
		'nadia.carvalho@universidade.pt',
		'2000-07-14',
		'Estudante',
		'2024-03-22',
		6
	),
	(
		'Otávio Rego',
		'otavio.rego@universidade.pt',
		'2002-12-25',
		'Estudante',
		'2024-02-11',
		4
	),
	(
		'Patrícia Dias',
		'patricia.dias@universidade.pt',
		'1988-02-14',
		'Docente',
		'2024-03-01',
		4
	),
	(
		'Quintino Aires',
		'quintino.aires@universidade.pt',
		'1979-09-09',
		'Docente',
		'2024-01-15',
		13
	),
	(
		'Rita Ferro',
		'rita.ferro@universidade.pt',
		'2003-03-21',
		'Estudante',
		'2024-02-28',
		13
	),
	(
		'Samuel Úria',
		'samuel.uria@universidade.pt',
		'2001-06-07',
		'Estudante',
		'2024-02-12',
		3
	),
	(
		'Tânia Ribas',
		'tania.ribas@universidade.pt',
		'1998-10-10',
		'Estudante',
		'2024-03-02',
		3
	),
	(
		'Urbano Lima',
		'urbano.lima@universidade.pt',
		'2002-01-29',
		'Estudante',
		'2024-01-30',
		5
	),
	(
		'Vera Kolodzig',
		'vera.kolodzig@universidade.pt',
		'1987-04-17',
		'Docente',
		'2024-02-14',
		5
	),
	(
		'Xavier Cardoso',
		'xavier.cardoso@universidade.pt',
		'2000-08-23',
		'Estudante',
		'2024-02-05',
		2
	),
	(
		'Yuri Ribeiro',
		'yuri.ribeiro@universidade.pt',
		'2001-11-12',
		'Estudante',
		'2024-02-25',
		2
	),
	(
		'Zulmira Ferreira',
		'zulmira.ferreira@universidade.pt',
		'1976-03-08',
		'Docente',
		'2024-03-10',
		2
	),
	(
		'Albertina Reis',
		'albertina.reis@universidade.pt',
		'2002-05-14',
		'Estudante',
		'2024-03-20',
		2
	),
	(
		'Bruno Nogueira',
		'bruno.nogueira@universidade.pt',
		'1995-01-15',
		'Estudante',
		'2024-01-11',
		10
	),
	(
		'Carla Andrino',
		'carla.andrino@universidade.pt',
		'1996-07-19',
		'Estudante',
		'2024-01-29',
		10
	),
	(
		'Daniel Oliveira',
		'daniel.oliveira2@universidade.pt',
		'1994-12-05',
		'Estudante',
		'2024-02-14',
		10
	),
	(
		'Elisa Rodrigues',
		'elisa.rodrigues@universidade.pt',
		'1997-03-22',
		'Estudante',
		'2024-02-28',
		10
	),
	(
		'Filipe Albuquerque',
		'filipe.albuquerque@universidade.pt',
		'1989-10-02',
		'Docente',
		'2024-03-02',
		10
	);


-- 9. TABELA: emprestimo
INSERT INTO emprestimo (
    data_saida,
    data_prevista_devolucao,
    data_devolucao,
    numero_utilizador,
    id_exemplar
)
VALUES
    ('2023-10-01', '2023-10-16', '2023-10-05', 2, 22),
    ('2023-10-02', '2023-10-17', '2023-11-01', 23, 28),
    ('2023-10-04', '2023-10-19', '2023-10-10', 27, 1),
    ('2023-10-05', '2023-10-20', '2023-10-14', 28, 34),
    ('2023-10-07', '2023-10-22', '2023-10-15', 10, 27),
    ('2023-10-09', '2023-10-24', '2023-10-15', 10, 3),
    ('2023-10-09', '2023-10-24', '2023-10-18', 11, 10),
    ('2023-10-09', '2023-10-24', '2023-10-10', 13, 31),
    ('2023-10-11', '2023-10-26', '2023-11-10', 21, 1),
    ('2023-10-13', '2023-10-28', '2023-11-02', 1, 2),
    ('2023-10-13', '2023-10-28', '2023-11-08', 2, 24),
    ('2023-10-14', '2023-10-29', '2023-10-21', 10, 29),
    ('2023-10-15', '2023-10-30', '2023-10-22', 1, 30),
    ('2023-10-16', '2023-10-31', '2023-11-13', 11, 11),
    ('2023-10-18', '2023-11-02', '2023-10-19', 3, 3),
    ('2023-10-19', '2023-11-03', '2023-11-12', 26, 25),
    ('2023-10-24', '2023-11-08', '2023-11-19', 10, 21),
    ('2023-10-27', '2023-11-11', '2023-11-09', 21, 10),
    ('2023-11-01', '2023-11-16', '2023-11-07', 3, 20),
    ('2023-11-01', '2023-11-16', '2023-11-08', 27, 22),
    ('2023-11-01', '2023-11-16', '2023-11-12', 30, 5),
    ('2023-11-05', '2023-11-20', '2023-11-07', 9, 26),
    ('2023-11-05', '2023-11-20', '2023-11-11', 21, 3),
    ('2024-03-05', '2024-03-20', '2024-03-18', 4, 22),
    ('2024-03-12', '2024-03-27', '2024-04-02', 12, 14),
    ('2024-04-15', '2024-04-30', '2024-04-28', 19, 23),
    ('2024-05-20', '2024-06-04', '2024-06-10', 8, 23),
    ('2024-06-01', '2024-06-16', '2024-06-15', 14, 2),
    ('2024-07-10', '2024-07-25', '2024-07-22', 16, 22),
    ('2024-08-14', '2024-08-29', '2024-09-02', 22, 23),
    ('2024-09-02', '2024-09-17', '2024-09-15', 5, 24),
    ('2024-10-11', '2024-10-26', '2024-10-25', 11, 22),
    ('2024-11-03', '2024-11-18', '2024-11-15', 3, 23),
    ('2024-11-20', '2024-12-05', '2024-12-01', 16, 10),
    ('2024-12-01', '2024-12-16', '2024-12-20', 20, 22),
    ('2025-01-15', '2025-01-30', '2025-01-28', 1, 23),
    ('2025-02-10', '2025-02-25', '2025-03-05', 9, 22),
    ('2025-03-18', '2025-04-02', '2025-03-29', 24, 24),
    ('2025-04-22', '2025-05-07', '2025-05-07', 23, 3),
    ('2025-05-05', '2025-05-20', '2025-05-18', 21, 23),
    ('2025-06-12', '2025-06-27', '2025-07-02', 15, 22),
    ('2025-07-19', '2025-08-03', '2025-08-01', 13, 5),
    ('2025-08-24', '2025-09-08', '2025-09-12', 10, 21),
    ('2025-09-11', '2025-09-26', '2025-09-22', 21, 24),
    ('2025-10-05', '2025-10-20', '2025-10-19', 11, 18),
    ('2025-10-22', '2025-11-06', '2025-11-07', 23, 3),
    ('2025-11-12', '2025-11-27', '2025-11-25', 18, 22),
    ('2025-11-14', '2025-11-29', '2025-11-21', 11, 15),
    ('2025-11-16', '2025-12-01', '2025-11-26', 5, 26),
    ('2025-12-03', '2025-12-18', '2025-12-15', 7, 24),
    ('2026-01-10', '2026-01-25', '2026-01-20', 26, 11),
    ('2026-01-22', '2026-02-06', '2026-02-05', 14, 23),
    ('2026-02-14', '2026-03-01', '2026-03-10', 5, 4),
    ('2026-03-03', '2026-03-18', '2026-03-15', 2, 23),
    ('2026-03-20', '2026-04-04', '2026-04-01', 25, 27),
    ('2026-04-05', '2026-04-20', '2026-04-22', 21, 23),
    ('2026-04-12', '2026-04-27', '2026-04-26', 26, 18),
    ('2026-05-02', '2026-05-17', '2026-05-21', 14, 35),
    ('2026-05-13', '2026-05-28', '2026-05-25', 17, 21),
    ('2026-06-04', '2026-06-19', '2026-06-17', 22, 22),
    ('2026-06-11', '2026-06-26', '2026-07-01', 21, 1),
    ('2026-07-02', '2026-07-17', '2026-07-12', 13, 22),
    ('2026-07-06', '2026-07-21', '2026-07-24', 22, 23),
    ('2026-07-15', '2026-07-30', '2026-08-02', 18, 22),
    ('2026-08-01', '2026-08-16', '2026-08-13', 2, 20),
    ('2026-08-03', '2026-08-18', '2026-08-18', 21, 24),
    ('2026-08-11', '2026-08-26', '2026-08-22', 11, 10),
    ('2026-08-10', '2026-08-25', NULL, 16, 21),
    ('2026-08-12', '2026-08-27', NULL, 3, 19),
    ('2026-08-15', '2026-08-30', NULL, 18, 29),
    ('2026-08-20', '2026-09-04', NULL, 30, 1),
    ('2026-08-22', '2026-09-06', NULL, 26, 26),
    ('2026-08-25', '2026-09-09', NULL, 29, 4),
    ('2026-09-01', '2026-09-16', NULL, 21, 12),
    ('2026-09-03', '2026-09-18', NULL, 4, 33),
    ('2026-09-05', '2026-09-20', NULL, 1, 31),
    ('2026-09-06', '2026-09-21', NULL, 22, 34),
    ('2026-09-08', '2026-09-23', NULL, 24, 11),
    ('2026-09-10', '2026-09-25', NULL, 24, 23),
    ('2026-09-12', '2026-09-27', NULL, 15, 10),
    ('2026-09-14', '2026-09-29', NULL, 16, 24),
    ('2026-09-15', '2026-09-30', NULL, 29, 28),
    ('2024-04-10', '2024-04-25', '2024-04-20', 31, 1),
    ('2024-05-12', '2024-05-27', '2024-05-27', 32, 22),
    ('2024-09-15', '2024-09-30', '2024-09-28', 34, 4),
    ('2025-02-02', '2025-02-17', '2025-02-15', 36, 24),
    ('2025-03-10', '2025-04-02', '2025-04-15', 39, 22),
    ('2025-05-20', '2025-06-04', '2025-06-02', 40, 10),
    ('2025-10-11', '2025-10-26', '2025-10-24', 42, 11),
    ('2026-02-15', '2026-03-02', '2026-02-28', 44, 8),
    ('2026-04-18', '2026-05-03', '2026-05-03', 45, 13),
    ('2026-06-05', '2026-06-20', '2026-06-18', 48, 23),
    ('2026-07-15', '2026-07-30', '2026-08-02', 50, 24),
    ('2026-08-01', '2026-08-16', NULL, 52, 35),
    ('2026-08-10', '2026-08-25', NULL, 31, 22),
    ('2026-08-20', '2026-09-04', NULL, 32, 2),
    ('2026-08-22', '2026-09-06', NULL, 34, 5);

COMMIT;