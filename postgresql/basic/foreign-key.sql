-- Active: 1663628303778@@127.0.0.1@5432@alura

DROP TABLE aluno;
CREATE TABLE IF NOT EXISTS aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome) VALUES ('Diogo');
INSERT INTO aluno (nome) VALUES ('Alexandre');

SELECT * FROM aluno;

DROP TABLE aluno_curso;
CREATE TABLE aluno_curso (
    aluno_id INTEGER,
    curso_id INTEGER, 
    PRIMARY KEY (aluno_id, curso_id),

    FOREIGN KEY (aluno_id)
        REFERENCES aluno (id),

    FOREIGN KEY (curso_id)  
        REFERENCES cursos (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);

SELECT * FROM aluno_curso;