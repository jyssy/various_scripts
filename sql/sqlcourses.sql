-- SQL Course Queries (using w3 schools test dB and SQL tool)
-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all
-- the queries in the next section are from a sql course or marketers

SELECT orders.customerid, customers.customername, COUNT(orders.customerid)
FROM orders JOIN customers on customers.customerid = orders.customerid
GROUP BY(orders.customerid)
ORDER BY COUNT(orders.customerid) desc;






