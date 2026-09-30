DROP DATABASE atividade;

CREATE DATABASE atividade;

use atividade;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    role ENUM('admin', 'usuario') NOT NULL DEFAULT 'usuario',
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Parte 4: Adpte o banco
ALTER TABLE usuarios
    ADD COLUMN email_verificado BOOLEAN NOT NULL DEFAULT FALSE,
    ADD COLUMN google_sub VARCHAR(255) UNIQUE,
    ADD COLUMN given_name VARCHAR(100),
    ADD COLUMN family_name VARCHAR(100),
    ADD COLUMN img TEXT;

ALTER TABLE usuarios MODIFY senha VARCHAR(255) NULL;

DESCRIBE usuarios;
