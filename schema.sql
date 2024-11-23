-- Create the database
CREATE DATABASE bioface_db;

-- Use the database
USE bioface_db;

-- Table for bio articles
CREATE TABLE bio_article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for bio dictionary items
CREATE TABLE bio_dict (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    benefit TEXT NOT NULL,
    how_to_use TEXT NOT NULL,
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for bio skincare items
CREATE TABLE bio_skincare (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    benefit TEXT NOT NULL,
    price INT NOT NULL,
    link_to_buy VARCHAR(255),
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);