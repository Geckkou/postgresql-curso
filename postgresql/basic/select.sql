-- Active: 1663628303778@@127.0.0.1@5432@alura
SELECT * FROM aluno;

SELECT nome AS "Nome do aluno",
       idade,
       altura,
       data_nascimento AS nascimento
 FROM aluno;

 SELECT * 
    FROM aluno
    WHERE nome <> 'Diogo';

SELECT * 
    FROM aluno 
    WHERE nome NOT LIKE 'Di%';

SELECT *
    FROM aluno 
    WHERE cpf IS NOT NULL
    AND idade = 35; 

SELECT * 
    FROM aluno
    WHERE idade BETWEEN 10 AND 35;

SELECT * 
    FROM aluno
    WHERE ativo = FALSE;

SELECT * 
    FROM aluno
    WHERE ativo IS NULL;

SELECT * 
    FROM aluno 
    WHERE nome LIKE 'D%'
    AND 
    cpf IS NOT NULL;

SELECT * 
    FROM aluno 
    WHERE nome LIKE 'D%'
    OR nome LIKE 'Rodrigo'
    OR nome LIKE 'Ni%';