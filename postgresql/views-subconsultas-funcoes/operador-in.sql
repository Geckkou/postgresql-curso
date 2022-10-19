-- Active: 1663628303778@@127.0.0.1@5432@alura@public
SELECT * FROM curso;
SELECT * FROM categoria;
SELECT * FROM curso WHERE categoria_id = 1 OR categoria_id = 2;
SELECT * FROM curso WHERE categoria_id IN (1, 2);