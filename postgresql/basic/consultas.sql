-- Active: 1663628303778@@127.0.0.1@5432@alura
CREATE TABLE funcionarios(
    id SERIAL PRIMARY KEY,
    matricula VARCHAR(10),
    nome VARCHAR(255),
    sobrenome VARCHAR(255)
);

INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');
SELECT * 
    FROM funcionarios 
    ORDER BY nome, matricula DESC;

SELECT * 
    FROM funcionarios 
    ORDER BY 3,4,2 DESC;

SELECT * 
    FROM funcionarios 
    ORDER BY 4 DESC, funcionarios.nome DESC, 2 ASC;

SELECT * 
    FROM funcionarios
    ORDER BY id
    LIMIT 5
    OFFSET 2;

-- COUNT - Retorna a quantidade de registros
-- SUM - Retorna a soma dos registros
-- MAX - Retorna o maior valor dos registros
-- MIN - Retorna o menor valor dos registros
-- AVG - Retorna a média dos registros

SELECT COUNT(id) AS "Total",
       SUM(id) AS "Soma", 
       MAX(id) AS "Maior id",
       MIN(id) AS "Menor id",
       ROUND(AVG(id),2) AS "Média"
    FROM funcionarios;

SELECT nome, 
       sobrenome,
       COUNT(id)
    FROM funcionarios
    GROUP BY nome, sobrenome
    ORDER BY nome;

SELECT cursos.nome,
       COUNT(aluno.id)
    FROM aluno
    JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
    JOIN cursos ON cursos.id = aluno_curso.curso_id
GROUP BY 1
ORDER BY 1;

SELECT cursos.nome,
       COUNT(aluno.id)
    FROM cursos
    LEFT JOIN aluno_curso ON aluno_curso.curso_id = cursos.id 
    LEFT JOIN aluno ON aluno.id = aluno_curso.aluno_id
        WHERE cursos.nome = 'CSS'
GROUP BY 1
    HAVING COUNT(aluno.id) > 0;

SELECT nome, 
       COUNT(id)
    FROM funcionarios
    GROUP BY nome
    HAVING COUNT(id) > 1;

