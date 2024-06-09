-- Tabela para armazenar as postagens
CREATE TABLE posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imageUrl VARCHAR(255) NOT NULL
);

-- Tabela para armazenar os comentários
CREATE TABLE comments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    postId INT NOT NULL,
    commentText TEXT NOT NULL,
    FOREIGN KEY (postId) REFERENCES posts(id) ON DELETE CASCADE
);
