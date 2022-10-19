-- Active: 1663628303778@@127.0.0.1@5432@alura
CREATE TABLE IF NOT EXISTS academico.aluno (
    id SERIAL PRIMARY KEY,
    primeiro_nome VARCHAR(255) NOT NULL CHECK(primeiro_nome <> ''),
    ultimo_nome VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL DEFAULT NOW()::DATE
);

CREATE TABLE IF NOT EXISTS academico.categoria (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE
);