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


-- dummy data
INSERT INTO bio_article (title, content, image) VALUES
('The Benefits of Bio Skincare', 'Bio skincare products are made from natural ingredients...', 'image1.jpg'),
('Understanding Bio Dictionary', 'A bio dictionary helps in understanding various bio terms...', 'image2.jpg'),
('Bio Articles: An Overview', 'Bio articles provide insights into various bio-related topics...', 'image3.jpg'),
('How to Use Bio Products', 'Using bio products can enhance your skincare routine...', 'image4.jpg'),
('The Future of Bio Technology', 'Bio technology is advancing rapidly and has numerous applications...', 'image5.jpg');

INSERT INTO bio_dict (name, benefit, how_to_use, image) VALUES
('Aloe Vera', 'Soothes skin and reduces inflammation', 'Apply directly to the skin', 'aloe_vera.jpg'),
('Green Tea', 'Rich in antioxidants and reduces acne', 'Use as a toner or in face masks', 'green_tea.jpg'),
('Chamomile', 'Calms irritated skin and promotes healing', 'Apply as a compress or in creams', 'chamomile.jpg'),
('Lavender', 'Has antiseptic properties and soothes skin', 'Use in essential oils or creams', 'lavender.jpg'),
('Honey', 'Moisturizes and heals skin', 'Apply directly or mix with other ingredients', 'honey.jpg');

INSERT INTO bio_skincare (name, benefit, price, link_to_buy, image) VALUES
('Bio Face Cream', 'Hydrates and nourishes the skin', 2599, 'https://example.com/bio-face-cream', 'face_cream.jpg'),
('Bio Cleanser', 'Gently cleanses the skin without stripping moisture', 1549, 'https://example.com/bio-cleanser', 'cleanser.jpg'),
('Bio Serum', 'Reduces fine lines and improves skin texture', 3000, 'https://example.com/bio-serum', 'serum.jpg'),
('Bio Sunscreen', 'Protects skin from harmful UV rays', 2075, 'https://example.com/bio-sunscreen', 'sunscreen.jpg'),
('Bio Night Cream', 'Repairs and rejuvenates skin overnight', 2850, 'https://example.com/bio-night-cream', 'night_cream.jpg');