-- Active: 1663628303778@@127.0.0.1@5432@alura
SELECT * FROM aluno;
SELECT * FROM cursos;

SELECT aluno.nome AS "Nome do Aluno",
       cursos.nome AS "Curso"
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN cursos ON cursos.id = aluno_curso.curso_id;

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);