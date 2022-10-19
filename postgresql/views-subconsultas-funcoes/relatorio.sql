-- Active: 1663628303778@@127.0.0.1@5432@alura
SELECT aluno.primeiro_nome,
       aluno.ultimo_nome,
       COUNT(curso.id) AS numero_cursos
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
    JOIN curso ON curso.id = aluno_curso.curso_id
GROUP BY aluno.primeiro_nome, aluno.ultimo_nome
ORDER BY numero_cursos DESC;

SELECT aluno.primeiro_nome,
       aluno.ultimo_nome,
       COUNT(aluno_curso.curso_id) numero_cursos
    FROM aluno
    JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
GROUP BY 1, 2
ORDER BY 3 DESC
    LIMIT 1;

SELECT curso.nome AS "Nome do curso",
       COUNT(aluno_curso.aluno_id) AS "Número de alunos"
    FROM curso 
    JOIN aluno_curso ON aluno_curso.curso_id = curso.id 
GROUP BY 1
ORDER BY 2 DESC;

SELECT categoria.nome AS "Nome da categoria",
       COUNT(curso.categoria_id) AS "Número de categorias"
    FROM categoria 
    JOIN curso ON curso.categoria_id = categoria.id 
GROUP BY 1
ORDER BY 2 DESC;


