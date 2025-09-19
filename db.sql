CREATE DATABASE api_users_simples;

USE api_users_simples;

CREATE TABLE usuarios (
    id VARCHAR(36) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    passwordHash VARCHAR(255) NOT NULL,
    createdAt DATETIME NOT NULL
);
/* COPIAR UM POR VEZ */
ALTER TABLE usuarios DROP COLUMN id;
ALTER TABLE usuarios ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;
ALTER TABLE usuarios MODIFY createdAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE usuarios ADD COLUMN role VARCHAR(50) NOT NULL DEFAULT 'user' after passwordHash;

select * from usuarios;

delete from usuarios where id = 8;