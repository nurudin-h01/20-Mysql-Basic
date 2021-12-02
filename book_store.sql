-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- SHOW Tables --
SHOW TABLES;

-- Create Table --
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author1 VARCHAR(100) NOT NULL,
    author2 VARCHAR(100) NOT NULL,
    author3 VARCHAR(100) NOT NULL,
    tittle VARCHAR(100),
    descriptions TEXT,
    place_sell CHAR(3),
    stock INT DEFAULT 0,
    creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- mengupdate column --
ALTER TABLE books
-- ADD column --
ADD price INT DEFAULT 0,
ADD statuss ENUM('available', 'out of stock', 'limited'),
-- DROP column --
DROP COLUMN place_sell;

-- INSERT 3 data --
INSERT INTO books (author1, author2, author3, tittle, descriptions, stock, price, statuss)
VALUES ('Joko', 'Budi', 'Asep', 'buku html', 'belajar dasar html', 5, 30000, 'available'),
('Andi', 'Tono', 'Budi', 'buku css', 'belajar dasar css', 2, 60000, 'limited'),
('Rudi', 'Andi', 'Joko', 'buku javascript', 'belajar dasar javascript', 0, 20000, 'out of stock');

-- SELECT semua row pada table --
SELECT * FROM books;

-- SELECT menggunakan ALIAS --
SELECT id as ID, author1 as A1, author2 as A2, author3 as A3 FROM books;

-- SELECT data menggunakan WHERE untuk id tertentu --
SELECT * FROM books
WHERE id = 1;

-- SELECT data menggunakan WHERE untuk dengan operator logical AND
SELECT * FROM books
WHERE author1 = 'Budi' AND author2 = 'Joko';

-- SELECT data menggunakan WHERE untuk dengan operator logical OR
SELECT * FROM books
WHERE author1 = 'Joko' or author2 = 'Andi';

-- SELECT data menggunakan WHERE untuk dengan operator logical NOT
SELECT * FROM books
WHERE NOT author2 = 'Tono';

-- SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id
SELECT * FROM books
ORDER BY id ASC;

-- SELECT seluruh column dan berikan LIMIT untuk 2 row saja
SELECT * FROM books
LIMIT 2;

-- Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price.
UPDATE books
SET author1 = 'Tono', price = 90000
WHERE id = 1;

-- Pilih 1 row untuk dilakukan DELETE 
DELETE FROM books
WHERE author3 = 'Rudi';