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
