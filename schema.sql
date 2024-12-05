-- Create the database
CREATE DATABASE bioface_db;

-- Use the database
USE bioface_db;

-- Table for bio articles
CREATE TABLE bio_article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    source TEXT NOT NULL,
    content TEXT NOT NULL,
    image TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for bio dictionary items
CREATE TABLE bio_dict (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    benefit TEXT NOT NULL,
    how_to_use TEXT NOT NULL,
    image TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table for bio skincare items
CREATE TABLE bio_skincare (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    benefit TEXT NOT NULL,
    price INT NOT NULL,
    link_to_buy TEXT,
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO bio_article (title, source, content, image) VALUES
('The Benefits of Aloe Vera', 'Nature Health Journal', 'Aloe Vera is known for its soothing and healing properties, especially for the skin.', 'https://media.post.rvohealth.io/wp-content/uploads/sites/3/2020/04/GettyImages-696251125_thumb-732x549.jpg'),
('The Power of Green Tea', 'Health Today', 'Green Tea has various benefits, including antioxidant properties and promoting healthy skin.', 'https://images.squarespace-cdn.com/content/v1/54e730d4e4b0bc2e9a8f31d0/1528278433321-0S0FTSBERLAMKUEMEZNW/glass+mugs+of+green+tea.jpg?format=1000w'),
('Using Honey for Natural Skincare', 'Beauty Magazine', 'Honey has been used for centuries for its antibacterial and moisturizing properties.', 'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/04/honey-1296x728-header.jpg?w=1155&h=1528'),
('Coconut Oil for Hair Growth', 'Hair Care Monthly', 'Coconut oil is a great natural remedy to help stimulate hair growth and nourish the scalp.', 'https://tribratanews.polri.go.id/web/image/blog.post/70697/image'),
('The Magic of Vitamin C', 'Health Digest', 'Vitamin C helps brighten skin and reduce the appearance of wrinkles.', 'https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2024/11/AdobeStock_871704795.jpeg');


INSERT INTO bio_dict (name, benefit, how_to_use, image) VALUES
('Aloe Vera', 'Soothes skin, helps with burns and skin irritation.', 'Apply gel directly to the skin or mix with lotion for enhanced moisturizing.', 'https://media.post.rvohealth.io/wp-content/uploads/sites/3/2020/04/GettyImages-696251125_thumb-732x549.jpg'),
('Green Tea', 'Antioxidant-rich, helps with anti-aging and skin protection.', 'Brew tea and use it as a toner or apply it as a face mask.', 'https://images.squarespace-cdn.com/content/v1/54e730d4e4b0bc2e9a8f31d0/1528278433321-0S0FTSBERLAMKUEMEZNW/glass+mugs+of+green+tea.jpg?format=1000w'),
('Honey', 'Antibacterial and moisturizing, helps with acne and dry skin.', 'Apply directly to the face or use in homemade masks.', 'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/04/honey-1296x728-header.jpg?w=1155&h=1528'),
('Coconut Oil', 'Moisturizes skin and hair, reduces dandruff.', 'Massage into the scalp and hair, leave for 20 minutes before washing.', 'https://tribratanews.polri.go.id/web/image/blog.post/70697/image'),
('Vitamin C', 'Brightens skin and reduces pigmentation, stimulates collagen production.', 'Apply serums or creams that contain Vitamin C after cleansing.', 'https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2024/11/AdobeStock_871704795.jpeg');


INSERT INTO bio_skincare (name, benefit, price, link_to_buy, image) VALUES
('Aloe Vera Moisturizer', 'Hydrates skin, soothes irritation, reduces redness.', 250, 'https://example.com/aloe-vera-moisturizer', 'https://media.post.rvohealth.io/wp-content/uploads/sites/3/2020/04/GettyImages-696251125_thumb-732x549.jpg'),
('Green Tea Face Cream', 'Reduces puffiness, tightens skin, antioxidants.', 300, 'https://example.com/green-tea-face-cream', 'https://images.squarespace-cdn.com/content/v1/54e730d4e4b0bc2e9a8f31d0/1528278433321-0S0FTSBERLAMKUEMEZNW/glass+mugs+of+green+tea.jpg?format=1000w'),
('Honey Glow Serum', 'Brightens skin, fades dark spots, moisturizes.', 350, 'https://example.com/honey-glow-serum', 'https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/04/honey-1296x728-header.jpg?w=1155&h=1528'),
('Coconut Oil Hair Mask', 'Repairs damaged hair, promotes hair growth, adds shine.', 400, 'https://example.com/coconut-oil-hair-mask', 'https://tribratanews.polri.go.id/web/image/blog.post/70697/image'),
('Vitamin C Serum', 'Brightens skin, smoothens fine lines, boosts collagen.', 450, 'https://example.com/vitamin-c-serum', 'https://nutritionsource.hsph.harvard.edu/wp-content/uploads/2024/11/AdobeStock_871704795.jpeg');
