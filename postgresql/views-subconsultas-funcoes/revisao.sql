-- Active: 1663628303778@@127.0.0.1@5432@alura
CREATE TABLE IF NOT EXISTS aluno(
    id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(255) NOT NULL,
    ultimo_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL 
);

CREATE TABLE IF NOT EXISTS curso (
    id SERIAL PRIMARY KEY, 
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE aluno_curso(
    aluno_id INTEGER NOT NULL REFERENCES aluno(id), 
    curso_id INTEGER NOT NULL REFERENCES curso(id),
    PRIMARY KEY (aluno_id, curso_id)
);

DROP TABLE aluno_curso;
DROP TABLE aluno;
DROP TABLE curso;