-- Active: 1663628303778@@127.0.0.1@5432@alura@academico
ALTER TABLE a RENAME TO teste;
SELECT * FROM teste;
ALTER TABLE teste RENAME COLUMN coluna1 TO primeira_coluna;
ALTER TABLE teste RENAME COLUMN coluna2 TO segunda_coluna;
ALTER TABLE teste ADD COLUMN terceira_coluna VARCHAR(255);