-- Active: 1663628303778@@127.0.0.1@5432@alura@academico
CREATE SEQUENCE eu_criei;

SELECT CURRVAL('eu_criei');

CREATE TEMPORARY TABLE auto (
    id INTEGER PRIMARY KEY DEFAULT NEXTVAL('eu_criei'),
    nome VARCHAR (30) NOT NULL
);

INSERT INTO auto (nome) VALUES ('Vinicius Dias');

INSERT INTO auto (id, nome) VALUES (2, 'Vinicius Dias');

INSERT INTO auto (nome) VALUES ('Bores Cleiton');

SELECT * FROM auto;
