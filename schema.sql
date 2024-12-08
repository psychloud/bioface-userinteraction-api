-- Create the database
CREATE DATABASE bioface_ui_db;

-- Use the database
USE bioface_ui_db;

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
    description TEXT NOT NULL,
    price INT NOT NULL,
    link_to_buy TEXT,
    image VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO bio_dict (name, benefit, how_to_use, image) VALUES
('','','',''),
('','','',''),


INSERT INTO bio_skincare (name, description, price, link_to_buy, image) VALUES
('','', , '',''),
('','', , '',''),

INSERT INTO bio_article (title, source, content, image) VALUES
('How to Get Clear Skin Fast','There is no instant way to clear acne or blemishes, but strategies that can help include avoiding touching the skin or popping pimples, washing frequently, and using products suited to the specific problem and the person’s skin type. In general, people with acne or blemishes have skin that is dry, oily, or a combination of the two. Numerous skin care tips exist for different skin types, and there are also general tips that people can try. Anyone uncertain about their skin care routine should consult a dermatologist for additional advice. 

General skin care tips

1. Avoid popping pimples
A pimple indicates trapped oil, sebum, and bacteria. It is also a sign that the body’s natural healing mechanism is working. Popping the pimple disrupts this healing process. Additionally, the released liquids expose the surrounding skin to similar bacteria, increasing the risk of additional pimples forming. The exposed pimple may also lead to permanent scarring. Whenever possible, avoid popping pimples. If they drain, keep the area clean.

2. Wash twice daily, and again after sweating
The American Academy of Dermatology recommends that people wash twice daily and then again after sweating. Leaving sweat on the skin and allowing it to dry can make acne worse, so it is best to wash the skin as soon as possible after sweating.

3. Avoid touching the face
Touching the face with the hands can deposit dirt, oils, and bacteria onto the skin and lead to breakouts. Avoiding touching the face can help prevent this.

4. Moisturize
All skin types can benefit from moisturizing after a daily face wash. Keeping the face moisturized may help control sebum production and prevent damage from the outside elements. The most effective moisturizer will vary in each case, depending on the person’s skin type. Anyone uncertain of what moisturizers will work for them should contact a dermatologist. Some types they may recommend include oil-free moisturizers and moisturizers that are noncomedogenic, which means that they do not clog the pores.

5. Always wear sunscreen
The sun’s ultraviolet (UV) rays damage the skin. Wearing sunscreen whenever outdoors can help protect the skin from these harmful rays. According to the Skin Cancer Foundation, it is best to wear sunscreen with at least SPF 30 when spending time outdoors. Wearing sunscreen with at least SPF 15 daily can also help reduce damage to the skin. If spending time outdoors, it is best to apply sunscreen around 30 minutes before going outside, and then reapplying it every 2 hours.

6. Focus on gentle products
Gentle products can be kinder to the skin, particularly if it is sensitive. Products that can irritate sensitive skin include alcohol-based products, fragranced products, toners, exfoliants, and astringents. Gentle, hypoallergenic versions of these products do exist. However, it is still important to test a small area of skin for reactions before applying any product to a more extensive area. Tools such as washcloths, rough sponges, or loofahs may be too rough for the skin, causing damage and irritation. Some more gentle options exist, such as soft cleansing brushes. Alternatively, using clean fingers to massage a cleanser into the face may help prevent extra irritation. It is important to ensure brushes and sponges are clean, as bacteria can cause further irritation or breakouts.

7. Use topical medications
Topical medications may help people of all skin types control acne. Several different medicated products are available, including benzoyl peroxide, with or without other ingredients, such as antibiotics, then salicylic acid, topical retinoids, such as tretinoin, dapsone, which is a combination of anti-inflammatory and antibiotic, also azelaic acid to kill bacteria and decrease the production of keratin, a natural substance that can lead to the development of acne
8. Stay hydrated
All cells in the body need water. The skin cells are closest to the environment and, therefore, may be more at risk of losing their moisture to the elements. Drinking water throughout the day may help keep the skin cells healthy.

9. Eat a healthful diet
Eating a diet rich in various plant foods and lean protein sources may help provide the nutrients that the skin needs to stay healthy. People looking to keep their skin clear may also want to cut out specific foods, such as dairy milk. A 2018 review found a positive relationship between milk and acne. Some believe that this link is due to the growth compounds and hormones that the milk contains. However, everyone may have different trigger foods that make their symptoms worse.

10. Use natural makeup products
Sometimes, makeup products can aggravate breakouts. Switching to natural makeup products or those designed to let the pores breathe may help reduce breakouts from makeup. It is also important to remove all makeup each night and clean any makeup brushes or tools regularly.

11. Reduce stress
It is important to minimize stress whenever possible. The authors of a 2017 article highlight the link between stress and acne, stating that stress can increase inflammatory compounds in the body. Strong feelings of anger or emotional stress may lead to an acne breakout or make symptoms worse.

Stress management techniques include:
- getting enough regular physical activity or exercise
- massages or acupuncture
- engaging in calming practices, such as meditation or breathing exercises
- yoga and tai chi','Medical News Today','https://storage.googleapis.com/bioface/bioface_image/bio%20article/art1.png'),
('The Importance of Facials and Skin Care','A good skin care routine is only as good as the products you use. While good quality products can help your skin look better now as well as in the future, poor quality products can be ineffective and even cause harm. In this blog, the dermatologists at Skin Center of South Miami explain more about the importance of quality skin care and facial products:

Why is good skin care important?
Good skin care is important for the following reasons:
- It helps your skin stay in good condition: You’re shedding skin cells throughout the day, so it’s important to keep your skin glowing and in good condition. An effective routine can help prevent acne, treat wrinkles, and help keep your skin looking its best.
- Your skin will look more youthful: As you age, your skin’s cells turn over more slowly, make it look duller and less radiant. Using a quality skin care line can help remove dead skin cells so your body will replace them with newer, more youthful cells.
- Prevention is easier than correction: Preventing skin problems is easier -– and less costly – than trying to fix them in the future. 
- Your self-confidence will get a boost: When your skin looks better, you’ll feel better about yourself and have more self-confidence.

What are some good skin care methods?
The following components can create a good, effective skin care routine:
- Cleanser: Wash your face gently with a product designed for your face. If you have dry skin, you’ll want to choose a cleanser that doesn’t have alcohol, and if you have oily skin, look for an oil-free cleanser. Afterward, rinse with warm water.
- Toner: Toner is used after washing your face, and it helps smooth and calm skin while restoring nutrients.
- Moisturizer: Moisturizers should be used every time you wash your face, even if you have oily skin. If you have this type of skin, choose an oil-free or gel product.
- Sunscreen: Even if your moisturizer has a sunscreen, it can still help to use a separate sunscreen every day, even if it’s cloudy. Choose one that provides broad-spectrum protection and has an SPF of at least 30.
- Exfoliator: Exfoliators are optional and can be used after a cleanser but before a moisturizer. They should only be used a maximum of once or twice a week.
- Serum: A serum can help address specific issues, such as redness.

What benefits do quality skin care products provide?
The following are some of the benefits of quality skin care products:
- Quality ingredients: Similar to the benefits that healthy food provides for your body, quality skin-care ingredients can improve your skin.
- Protection from environmental damage: such as pollution
- Help fighting the effects of aging: such as wrinkles and sunspots
- Results for the money: Even if quality products cost more in some cases, they’re worth the money. If you use ineffective products, you’re wasting money.
- Exceeding standards: Quality skin care products are more refined, with fewer bacteria and impurities.

Why should you avoid poor quality skin care products?
Poor quality skin care products are more likely to cause the following negative effects:
- Ineffective results      
- Infections
- Allergic reactions such as rashes
- Worsening problems by clogging pores, causing breakouts, etc.
','Skin Center of South Miami','https://storage.googleapis.com/bioface/bioface_image/bio%20article/art2.jpg'),
('Indonesian Skincare Market Overview: Trends and Insights','The reputation for the best skincare products has long been associated with South Korea, renowned for its innovative formulations, advanced technology, and meticulous attention to skincare routines. However, the Indonesian skincare industry has emerged as a formidable contender, offering an interesting fusion of tradition and innovation. Skincare is the prevailing trend in the Indonesian beauty industry, constituting approximately 30% of the market share. This segment encompasses a diverse array of products, from daily moisturizers and sunscreens to specialized facial, hand, and foot treatments, focusing on nourishment, protection, and addressing specific skin concerns. Among Indonesian skincare product types, facial care takes center stage in skincare market trends, commanding a significant share of approximately 57%. This dominance underscores the enduring importance of facial skincare routines among Indonesian consumers. Factors such as easy accessibility to information and an expanding array of facial care products catering to diverse skin needs further bolster the segment's prominence. While facial care maintains its stronghold, the sun protection category emerges as the fastest-growing segment, boasting a remarkable 7.8% compound annual growth rate (CAGR) from 2015 to 2028. This surge in demand underscores heightened awareness among consumers regarding the importance of shielding the skin from harmful UV rays. Brands like Wardah, L’Oreal, and Azarine lead the charge in this segment, offering high-quality formulations that cater to the evolving needs of Indonesian consumers. Indonesian Skincare Market Growth Several key drivers fuel the growth of the Indonesian skincare market, with the widespread adoption of social media playing a pivotal role. The exponential rise in social media users has significantly heightened consumer awareness and engagement in the beauty sphere, enabling brands to reach previously untapped audiences and drive market expansion. Indonesian consumers' steady disposable income growth has significantly contributed to the skincare market's ascent. As individuals become increasingly willing to allocate resources to personal care, particularly skincare, the industry experiences a corresponding uptick in demand and spending. Additionally, the expansive reach of health and beauty retailers in Indonesia further catalyzes market growth. Retail giants like Watsons, Guardian, Sociolla, and BeautyHaul continuously expand their footprint, making skincare products more accessible to a broader audience. With the beauty retail industry projected to grow at an impressive CAGR of 16.8%, these retailers are instrumental in driving the proliferation of skincare products nationwide.Most Indonesian consumers prefer local brands for their skincare needs, with Wardah emerging as the top brand in this category. Imported brands such as SK-II compete fiercely, boasting a slightly larger market share than other imported skincare brands. The import market for cosmetics and skincare in Indonesia in 2021 was dominated by China, with a share of 20.2% (USD 62.37 million), closely followed by South Korea at 19% (USD 58.77 million). France (10%), the United States, Thailand, and Japan are also among the leading players in the import market. As the industry evolves, stakeholders must remain agile, adapting to emerging trends and consumer demands to thrive in this vibrant market. With a rich tapestry of offerings and a consumer base increasingly focused on skincare and wellness, the Indonesian skincare industry presents boundless opportunities for growth and innovation within the market.','Market Research Indonesia','https://storage.googleapis.com/bioface/bioface_image/bio%20article/art3.jpg'),
('','','',''),
('','','',''),
('','','',''),
('','','',''),
('','','',''),
('','','',''),
('','','',''),
