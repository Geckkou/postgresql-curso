-- Active: 1663628303778@@127.0.0.1@5432@alura@public
SELECT curso.nome AS "Nome do curso" FROM curso WHERE categoria_id IN (
    SELECT id FROM categoria WHERE nome NOT LIKE '% %'
);

SELECT categoria.nome AS categoria,
       COUNT(curso.id) AS "Número de cursos"
    FROM categoria
    JOIN curso ON curso.categoria_id = categoria.id 
GROUP BY categoria;

SELECT categoria
    FROM (
        SELECT categoria.nome AS categoria,
               COUNT(curso.id) AS "Número de cursos"
            FROM categoria
            JOIN curso ON curso.categoria_id = categoria.id 
        GROUP BY categoria
    ) AS categoria_cursos
    WHERE "Número de cursos" > 3;

SELECT "Nome do curso", 
       "Número de alunos"
    FROM (
       SELECT curso.nome AS "Nome do curso",
              COUNT(aluno_curso.aluno_id) AS "Número de alunos"
            FROM curso
            JOIN aluno_curso ON aluno_curso.curso_id = curso.id
        GROUP BY 1
        ORDER BY "Número de alunos"
    ) AS cursos
    WHERE "Número de alunos" > 2;

