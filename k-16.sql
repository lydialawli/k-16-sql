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