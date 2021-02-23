
-- Q1
CREATE DATABASE Boutique 


-- Q2
CREATE TABLE Manufacturers (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL,
  PRIMARY KEY (Code)   
);

CREATE TABLE Products (
  Code INTEGER,
  Name VARCHAR(255) NOT NULL ,
  Price DECIMAL NOT NULL ,
  Manufacturer INTEGER NOT NULL,
  PRIMARY KEY (Code), 
  FOREIGN KEY (Manufacturer) REFERENCES Manufacturers(Code)
) ENGINE=INNODB;

-- Q3
SELECT `Name`FROM `products`


-- Q4
SELECT `Name`, `Price` FROM `products`


-- Q5
SELECT * FROM `products` WHERE Price <= 200

-- Q6
SELECT * FROM `products` WHERE Price BETWEEN 80 AND 120

-- Q7
 SELECT  'name',Price*100 as 'NewPrice' FROM 'Products'

--  Q8
SELECT AVG(Price) FROM products


-- Q9
SELECT AVG(Price) FROM products WHERE Manufacturer = 2

-- Q10
SELECT Price FROM `products` WHERE Price >= 180 -- pour afficher le tableau des prix 
SELECT COUNT(*) FROM Products WHERE Price >= 180 -- pour afficher le total des case > 180 


-- Q11
SELECT `Name`, `Price` FROM `products` WHERE Price >= 180 ORDER BY Price DESC, Name --this for ordering the price first
SELECT `Name`, `Price` FROM `products` WHERE Price >= 180 ORDER BY Name ASC --this is for ordering name 

-- Q12

SELECT x.* , y.Name FROM Products x JOIN Manufacturers y ON  ( x.Manufacturer = y.Code)


--Q14
SELECT AVG(Price), Manufacturer FROM products GROUP BY Manufacturer

--Q15
 SELECT x.Name , AVG(Price) FROM Manufacturers AS x INNER JOIN Products ON x.Code=Products.Manufacturer GROUP BY x.Name
