-- Active: 1663628303778@@127.0.0.1@5432@alura@academico
DROP TABLE a;
CREATE TEMPORARY TABLE a (
    coluna1 VARCHAR(255) NOT NULL CHECK(coluna1 <> ''),
    coluna2 VARCHAR(255) NOT NULL,
    UNIQUE (coluna1, coluna2)
);

INSERT INTO a VALUES ('a', 'a');

SELECT * FROM a;