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

-- #160302
SELECT places.id, places.title, places.price, types.name AS type
FROM places 
LEFT JOIN types 
ON places.type = types.id 

-- #160303
SELECT places.id, places.title, places.price, types.name AS type, users.name AS host, users.email 
FROM places 
LEFT JOIN types ON places.type = types.id 
LEFT JOIN users ON places.host = users.id 
WHERE price > 40

-- #160304
SELECT users.name, users.email, places.title, places.rating 
FROM users
LEFT JOIN places ON places.host = users.id 

-- #160305
SELECT users.name, users.email, places.title, places.rating 
FROM users
INNER JOIN places ON users.id = places.host
ORDER BY places.id

-- #160306
SELECT places.title, users.name AS fan
FROM places
LEFT JOIN likes
ON places.id = likes.place
LEFT JOIN users
ON users.id = likes.user
ORDER BY places.title

-- #160307
SELECT places.title, users.name AS fan
FROM places
INNER JOIN likes
ON places.id = likes.place
INNER JOIN users
ON users.id = likes.user
ORDER BY users.name