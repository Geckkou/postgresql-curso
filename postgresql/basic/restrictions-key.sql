-- Active: 1663628303778@@127.0.0.1@5432@alura
DROP TABLE aluno_curso;
CREATE TABLE IF NOT EXISTS aluno_curso (
    aluno_id INTEGER,
    curso_id INTEGER, 
    PRIMARY KEY (aluno_id, curso_id),

    FOREIGN KEY (aluno_id)
        REFERENCES aluno (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (curso_id)  
        REFERENCES cursos (id)
);

INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (1,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,1);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (2,2);
INSERT INTO aluno_curso (aluno_id, curso_id) VALUES (3,3);
SELECT * FROM aluno_curso;
SELECT * FROM aluno;

DELETE FROM aluno WHERE id = 1;

UPDATE aluno 
    SET id = 10
    WHERE id = 2;
