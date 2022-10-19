-- Active: 1663628303778@@127.0.0.1@5432@alura
Begin;
DELETE FROM teste.cursos_programacao;
ROLLBACK;

BEGIN;
DELETE FROM teste.cursos_programacao WHERE id_curso = 60;
COMMIT;
