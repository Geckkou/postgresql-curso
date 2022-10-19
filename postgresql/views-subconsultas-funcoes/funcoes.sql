-- Active: 1663628303778@@127.0.0.1@5432@alura@public
SELECT * FROM aluno;

SELECT CONCAT(primeiro_nome, ' ', ultimo_nome) 
    AS "Nome completo" 
    FROM aluno;

SELECT CONCAT(primeiro_nome, ' ', ultimo_nome) 
    AS "Nome completo", 
    NOW()::DATE AS "Data atual", 
    data_nascimento AS "Data de Nascimento",
    EXTRACT (YEAR FROM AGE(data_nascimento)) AS idade
    FROM aluno;

