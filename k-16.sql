-- # 160201
SELECT * FROM `places` 

-- #160202
SELECT id,title,price FROM `places` 

-- #160203
SELECT * FROM `places` WHERE price >= 150 

-- #160204
SELECT * FROM `places` WHERE city = "Samui"

-- #160205
SELECT * FROM `places` WHERE price >= 80 AND city != 'Samui' 

-- #160206
SELECT id,title,price FROM `places` ORDER BY price

-- #160207
SELECT * FROM places WHERE title LIKE 'Amazing%' 

-- #160208
SELECT id, title AS NAME, price AS AMOUNT, rating 
FROM `places` 
WHERE city != 'Phangan' 
AND price > 40 

-- #160209
SELECT * FROM `users` WHERE email LIKE "%gmail%" 

-- #160301
SELECT * FROM places LEFT JOIN types ON places.type = types.id 