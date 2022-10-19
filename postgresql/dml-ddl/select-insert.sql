-- Active: 1663628303778@@127.0.0.1@5432@alura@academico
CREATE TEMPORARY TABLE IF NOT EXISTS cursos_programacao (
    id_curso INTEGER PRIMARY KEY,
    nome_curso VARCHAR(255) NOT NULL
);

INSERT INTO cursos_programacao

SELECT academico.curso.id,
       academico.curso.nome
    FROM academico.curso 
    JOIN academico.categoria ON academico.categoria.id = academico.curso.categoria_id
    WHERE categoria_id = 2;

