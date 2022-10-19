-- Active: 1663628303778@@127.0.0.1@5432@alura@academico
update academico.curso SET nome = 'Java básico' WHERE id = 6;

UPDATE teste.cursos_programacao SET nome_curso = ?
    FROM academico.curso WHERE teste.cursos_programacao.id_curso = academico.curso.id
    AND academico.curso.id < 10;