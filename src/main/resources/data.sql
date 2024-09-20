-- EXAMPLE DATA --

-- Insert into Geo if not exists
INSERT INTO geo (lat, lng)
SELECT '37.7749', '-122.4194' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '37.7749' AND lng = '-122.4194');
INSERT INTO geo (lat, lng)
SELECT '40.7128', '-74.0060' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '40.7128' AND lng = '-74.0060');
INSERT INTO geo (lat, lng)
SELECT '34.0522', '-118.2437' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '34.0522' AND lng = '-118.2437');
INSERT INTO geo (lat, lng)
SELECT '51.5074', '-0.1278' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '51.5074' AND lng = '-0.1278');
INSERT INTO geo (lat, lng)
SELECT '48.8566', '2.3522' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '48.8566' AND lng = '2.3522');
INSERT INTO geo (lat, lng)
SELECT '35.6895', '139.6917' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '35.6895' AND lng = '139.6917');
INSERT INTO geo (lat, lng)
SELECT '55.7558', '37.6173' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '55.7558' AND lng = '37.6173');
INSERT INTO geo (lat, lng)
SELECT '39.9042', '116.4074' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '39.9042' AND lng = '116.4074');
INSERT INTO geo (lat, lng)
SELECT '52.5200', '13.4050' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '52.5200' AND lng = '13.4050');
INSERT INTO geo (lat, lng)
SELECT '41.9028', '12.4964' WHERE NOT EXISTS (SELECT 1 FROM geo WHERE lat = '41.9028' AND lng = '12.4964');

-- Insert into Company if not exists
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Innovate Solutions', 'Driving Innovation Forward', 'Innovate Inc.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'Innovate Inc.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Tech Gurus', 'Shaping the Future', 'TechGurus Ltd.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'TechGurus Ltd.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Green Energy', 'Powering Tomorrow', 'GreenPower Co.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'GreenPower Co.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Health Connect', 'Connecting Healthcare', 'HealthConnect Corp.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'HealthConnect Corp.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'EduSmart', 'Empowering Education', 'EduSmart LLC' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'EduSmart LLC');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Market Leaders', 'Your Business Partner', 'Market Leaders Inc.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'Market Leaders Inc.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Creative Minds', 'Designing the Future', 'Creative Minds Ltd.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'Creative Minds Ltd.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Eco-Friendly Goods', 'Sustainable Choices', 'EcoGoods Co.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'EcoGoods Co.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Travel Buddy', 'Your Travel Companion', 'TravelBuddy Corp.' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'TravelBuddy Corp.');
INSERT INTO company (bs, catch_phrase, name)
SELECT 'Foodies Delight', 'Taste the Difference', 'Foodies Delight LLC' WHERE NOT EXISTS (SELECT 1 FROM company WHERE name = 'Foodies Delight LLC');

-- Insert into Address if not exists
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '123 Main St', 'Apt 1', 'Springfield', '12345', 1 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '123 Main St' AND city = 'Springfield');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '456 Elm St', 'Suite 2', 'Riverdale', '23456', 2 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '456 Elm St' AND city = 'Riverdale');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '789 Oak St', '', 'Hometown', '34567', 3 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '789 Oak St' AND city = 'Hometown');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '101 Pine St', 'Floor 3', 'Metropolis', '45678', 4 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '101 Pine St' AND city = 'Metropolis');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '202 Maple St', 'Unit 4', 'Smalltown', '56789', 5 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '202 Maple St' AND city = 'Smalltown');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '303 Birch St', 'Room 5', 'Big City', '67890', 6 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '303 Birch St' AND city = 'Big City');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '404 Cedar St', 'Apt 6', 'Lakeside', '78901', 7 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '404 Cedar St' AND city = 'Lakeside');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '505 Walnut St', 'Suite 7', 'Forest Hills', '89012', 8 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '505 Walnut St' AND city = 'Forest Hills');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '606 Ash St', 'Floor 8', 'Sunnyvale', '90123', 9 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '606 Ash St' AND city = 'Sunnyvale');
INSERT INTO address (street, suite, city, zipcode, geo_id)
SELECT '707 Chestnut St', 'Unit 9', 'Gotham', '01234', 10 WHERE NOT EXISTS (SELECT 1 FROM address WHERE street = '707 Chestnut St' AND city = 'Gotham');

-- Insert into User if not exists
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'John Doe', 'johndoe', 'john@example.com', '123-456-7890', 'johndoe.com', 1, 1 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'johndoe');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Jane Smith', 'janesmith', 'jane@example.com', '234-567-8901', 'janesmith.com', 2, 2 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'janesmith');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Sam Johnson', 'samjohnson', 'sam@example.com', '345-678-9012', 'samjohnson.com', 3, 3 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'samjohnson');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Emily Davis', 'emilydavis', 'emily@example.com', '456-789-0123', 'emilydavis.com', 4, 4 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'emilydavis');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Michael Brown', 'michaelbrown', 'michael@example.com', '567-890-1234', 'michaelbrown.com', 5, 5 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'michaelbrown');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Sarah Wilson', 'sarahwilson', 'sarah@example.com', '678-901-2345', 'sarahwilson.com', 6, 6 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'sarahwilson');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'David Lee', 'davidlee', 'david@example.com', '789-012-3456', 'davidlee.com', 7, 7 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'davidlee');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Linda Martinez', 'lindamartinez', 'linda@example.com', '890-123-4567', 'lindamartinez.com', 8, 8 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'lindamartinez');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Robert Garcia', 'robertgarcia', 'robert@example.com', '901-234-5678', 'robertgarcia.com', 9, 9 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'robertgarcia');
INSERT INTO user (name, username, email, phone, website, address_id, company_id)
SELECT 'Sophia Hernandez', 'sophiahernandez', 'sophia@example.com', '012-345-6789', 'sophiahernandez.com', 10, 10 WHERE NOT EXISTS (SELECT 1 FROM user WHERE username = 'sophiahernandez');