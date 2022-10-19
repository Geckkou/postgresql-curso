-- Active: 1663628303778@@127.0.0.1@5432@alura
INSERT INTO aluno (nome) VALUES ('Nico');
INSERT INTO cursos (id, nome) VALUES (3, 'CSS');

SELECT aluno.nome AS "Nome",
       cursos.nome AS "Curso"
    FROM aluno
    LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    LEFT JOIN cursos ON cursos.id = aluno_curso.curso_id;

SELECT aluno.nome AS "Nome",
       cursos.nome AS "Curso"
    FROM aluno
    RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    RIGHT JOIN cursos ON cursos.id = aluno_curso.curso_id;

SELECT aluno.nome AS "Nome",
       cursos.nome AS "Curso"
    FROM aluno
    FULL JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    FULL JOIN cursos ON cursos.id = aluno_curso.curso_id;

SELECT aluno.nome AS "Nome",
       cursos.nome AS "Curso"
    FROM aluno
    CROSS JOIN cursos;