-- SQL Course Queries (using w3 schools test dB and SQL tool)
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- the queries in the next section are from a sql course or marketers

SELECT orders.customerid, customers.customername, COUNT(orders.customerid)
FROM orders JOIN customers on customers.customerid = orders.customerid
GROUP BY(orders.customerid)
ORDER BY COUNT(orders.customerid) desc;


SELECT *
FROM `countrylanguage`
ORDER BY Percentage DESC;


-- learning the unique MySQL set up in sequelace: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all

SELECT * FROM Customers;


SELECT CustomerName
FROM Customers;

SELECT * FROM products
WHERE Price > 20;


SELECT * FROM Customers
WHERE Country = "Germany";


SELECT COUNT(*) FROM Customers
WHERE City = "London";


SELECT * FROM Customers
JOIN Orders on orders.customerid=customers.customerid
WHERE Country = "Mexico";


Select * FROM Products
JOIN Categories ON categories.categoryid=products.categoryid
WHERE ProductName = "Chang";


SELECT *
FROM `countrylanguage`
ORDER BY countrycode ASC;


SELECT * FROM orders
GROUP BY customerid;


SELECT * FROM orders
ORDER BY customerid
LIMIT 7;

{
SELECT * FROM products
ORDER BY price ASC
LIMIT 3;

-- OR

-- though, this seems a waste of cade to get the same answer as above
SELECT * FROM products
join categories ON categories.categoryid = products.categoryid
ORDER BY price
LIMIT 3; 
}


SELECT orders.customerid, customers.customername, count(orders.customerid)
FROM orders JOIN customers on customers.customerid = orders.customerid
GROUP BY (orders.customerid)
LIMIT 5;



SELECT orders.customerid, customers.customername, COUNT(orders.customerid)
FROM orders
JOIN customers on customers.customerid = orders.customerid
GROUP BY orders.customerid
ORDER BY COUNT (orders.customerid) DESC;


SELECT orders.customerid, customers.customername, customers.country, COUNT(orders.customerid)
FROM orders
JOIN customers ON customers.customerid = orders.customerid
GROUP BY customers.country
ORDER BY COUNT(orders.customerid) DESC;

-- back to the world.sql db using sequelace
SELECT language, percentage, country.code, country.population
FROM `countrylanguage`
JOIN country on country.code = countrylanguage.countrycode
ORDER BY percentage DESC;


SELECT language, percentage, country.code, country.population
FROM `countrylanguage`
JOIN country on country.code = countrylanguage.countrycode
ORDER BY country.population DESC;


SELECT country.region, country.population, countrylanguage.countrycode, country.code, countrylanguage.language
FROM country
JOIN countrylanguage ON countrylanguage.countrycode = country.code
ORDER BY population DESC;


SELECT city.name, city.population, country.region, country.name
FROM city
JOIN country ON country.code = city.countrycode
ORDER BY city.population DESC;


SELECT city.name, city.population, country.region, country.name
FROM city
JOIN country ON country.code = city.countrycode
WHERE city.population < 10000000
ORDER BY city.population DESC;


SELECT city.name, city.population, country.region, country.name
FROM city
JOIN country ON country.code = city.countrycode
WHERE city.population > 10000000
ORDER BY city.population DESC;


SELECT city.name, city.population, country.region, country.name
FROM city
JOIN country ON country.code = city.countrycode
WHERE city.population < 100000
ORDER BY city.population DESC;
















