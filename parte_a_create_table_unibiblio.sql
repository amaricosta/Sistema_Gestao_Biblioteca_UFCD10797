-- Sistema de Gestão de Biblioteca Universitária
-- Parte A - Construção da Base de Dados - Criar tabelas

-- Tabela Departamento
CREATE TABLE departamento(
    id_departamento INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_departamento VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela Editora
CREATE TABLE editora(
    id_editora INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_editora VARCHAR(100) NOT NULL UNIQUE
);

-- Tabela Categoria
CREATE TABLE categoria(
    id_categoria INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL UNIQUE,
    descricao TEXT
);

-- Tabela Autor
CREATE TABLE autor(
    id_autor INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL
);

-- Tabela Curso
CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL,
    id_departamento INTEGER NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

-- Tabela Leitor
CREATE TABLE leitor(
    numero_utilizador INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome_leitor VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    tipo_leitor VARCHAR(20) NOT NULL CHECK(tipo_leitor IN('Estudante', 'Docente')),
    data_cadastro DATE NOT NULL DEFAULT  CURRENT_DATE,
    id_curso INTEGER NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

-- Tabela Livro
CREATE TABLE livro(
    id_livro INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    data_publicacao DATE NOT NULL,
    id_editora INTEGER NOT NULL,
    id_categoria INTEGER NOT NULL,
	
    FOREIGN KEY (id_editora) REFERENCES editora(id_editora),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- Tabela Livro_Autor
CREATE TABLE livro_autor(
    id_livro INTEGER NOT NULL,
    id_autor INTEGER NOT NULL,
	
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

-- Tabela Exemplar
CREATE TABLE exemplar(
    id_exemplar INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    serie VARCHAR(20) NOT NULL UNIQUE,
    status VARCHAR(30) NOT NULL DEFAULT 'Disponível' CHECK (status IN ('Disponível', 'Emprestado', 'Em Manutenção')),
    id_livro INTEGER NOT NULL,
	
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

-- Tabela Empréstimo 
CREATE TABLE emprestimo(
    id_emprestimo INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_saida DATE NOT NULL DEFAULT CURRENT_DATE,
    data_prevista_devolucao DATE NOT NULL,
    data_devolucao DATE,
    numero_utilizador INTEGER NOT NULL,
    id_exemplar INTEGER NOT NULL,
	
    FOREIGN KEY (numero_utilizador) REFERENCES leitor(numero_utilizador),
    FOREIGN KEY (id_exemplar) REFERENCES exemplar(id_exemplar),
    CONSTRAINT chk_datas CHECK(data_prevista_devolucao >= data_saida),
    CONSTRAINT chk_data_entrega CHECK(data_devolucao >= data_saida)
);

-- Tabela Reserva
CREATE TABLE reserva (
    id_reserva INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_reserva DATE NOT NULL DEFAULT CURRENT_DATE,
    status_reserva VARCHAR(20) NOT NULL DEFAULT 'Ativa' 
        CHECK (status_reserva IN ('Ativa', 'Atendida', 'Cancelada', 'Expirada')),
    numero_utilizador INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    
    FOREIGN KEY (numero_utilizador) REFERENCES leitor(numero_utilizador),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);