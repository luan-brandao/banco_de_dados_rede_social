create database face_truco;
use face_truco;

CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Postagens (
    id INT PRIMARY KEY,
    texto TEXT NOT NULL,
    usuario_id INT,
    data_postagem DATE,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);

CREATE TABLE Comentarios (
    id INT PRIMARY KEY,
    texto TEXT NOT NULL,
    usuario_id INT,
    postagem_id INT,
    data_comentario DATE,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id),
    FOREIGN KEY (postagem_id) REFERENCES Postagens(id)
);

CREATE TABLE Amizades (
    usuario1_id INT,
    usuario2_id INT,
    data_amizade DATE,
    PRIMARY KEY (usuario1_id, usuario2_id),
    FOREIGN KEY (usuario1_id) REFERENCES Usuarios(id),
    FOREIGN KEY (usuario2_id) REFERENCES Usuarios(id)
);

-- Inserir usuários
INSERT INTO Usuarios (id, nome) VALUES
(1, 'João'),
(2, 'Maria'),
(3, 'Carlos'),
(4, 'Ana');

-- Inserir postagens
INSERT INTO Postagens (id, texto, usuario_id, data_postagem) VALUES
(1, 'Bom dia, mundo!', 1, '2023-11-28'),
(2, 'Estou muito feliz hoje!', 2, '2023-11-27'),
(3, 'Vamos sair para um café?', 3, '2023-11-26'),
(4, 'Aprendendo SQL!', 1, '2023-11-25');

-- Inserir comentários
INSERT INTO Comentarios (id, texto, usuario_id, postagem_id, data_comentario) VALUES
(1, 'Que bom!', 2, 1, '2023-11-28'),
(2, 'Eu também estou feliz!', 3, 2, '2023-11-27'),
(3, 'Adoraria! Que tal amanhã?', 4, 3, '2023-11-26'),
(4, 'Legal, boa sorte!', 2, 4, '2023-11-25');

-- Inserir amizades
INSERT INTO Amizades (usuario1_id, usuario2_id, data_amizade) VALUES
(1, 2, '2023-11-20'),
(1, 3, '2023-11-21'),
(2, 4, '2023-11-22');


-- Liste todas as postagens feitas por um usuário chamado 'João'.
SELECT * FROM Postagens
WHERE usuario_id = (SELECT id FROM Usuarios WHERE nome = 'João');

-- Mostre todos os comentários feitos em uma postagem com o texto 'Bom dia, mundo!'.
SELECT * FROM Comentarios
WHERE postagem_id = (SELECT id FROM Postagens WHERE texto = 'Bom dia, mundo!');


-- Apresente a contagem total de postagens e comentários feitos por cada usuário.
SELECT
    u.nome,
    COUNT(DISTINCT p.id) AS total_postagens,
    COUNT(DISTINCT c.id) AS total_comentarios
FROM Usuarios u
LEFT JOIN Postagens p ON u.id = p.usuario_id
LEFT JOIN Comentarios c ON u.id = c.usuario_id
GROUP BY u.nome;


-- Liste todas as novas amizades formadas nos últimos 30 dias.
SELECT *
FROM Amizades
WHERE data_amizade >= CURDATE() - INTERVAL 30 DAY;


-- Forneça informações detalhadas sobre um usuário chamado 'Maria', incluindo suas postagens e amizades.
SELECT
    u.nome,
    p.texto AS postagem,
    a2.nome AS amigo
FROM Usuarios u
LEFT JOIN Postagens p ON u.id = p.usuario_id
LEFT JOIN Amizades a ON u.id = a.usuario1_id OR u.id = a.usuario2_id
LEFT JOIN Usuarios a2 ON (a.usuario1_id = u.id AND a.usuario2_id = a2.id) OR (a.usuario2_id = u.id AND a.usuario1_id = a2.id)
WHERE u.nome = 'Maria';





