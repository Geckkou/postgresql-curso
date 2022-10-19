-- Active: 1663628303778@@127.0.0.1@5432@alura
CREATE TABLE cursos(
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO cursos (id, nome) VALUES (1,'HTML');
INSERT INTO cursos (id, nome) VALUES (2,'JavaScript');

SELECT * FROM cursos;

