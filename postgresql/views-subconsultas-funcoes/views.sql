-- Active: 1663628303778@@127.0.0.1@5432@alura@public
CREATE VIEW vw_cursos_por_categoria AS
    SELECT categoria.nome AS categoria,
           COUNT(curso.id) AS "Número de cursos"
        FROM categoria
        JOIN curso ON curso.categoria_id = categoria.id 
    GROUP BY categoria;

SELECT * FROM vw_cursos_por_categoria;

CREATE VIEW vw_cursos_programacao AS
    SELECT nome 
        FROM curso 
        WHERE categoria_id = 2; 

SELECT * FROM vw_cursos_programacao;

SELECT categoria.id AS categoria_id, 
       vw_cursos_por_categoria.*
    FROM vw_cursos_por_categoria
    JOIN categoria ON categoria.nome = vw_cursos_por_categoria.categoria;