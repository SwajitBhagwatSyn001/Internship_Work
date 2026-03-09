CREATE DATABASE SQL_Queries_Task;
USE SQL_Queries_Task;

SHOW TABLES;

-- 1. Retrieve all data.
SELECT * FROM coffee_sales;

-- 2. Select destinct coffe.
SELECT DISTINCT(coffee_name) FROM coffee_sales;

-- 3. Retrieve data where coffee name is Espresso.
SELECT * FROM coffee_sales WHERE coffee_name = 'Espresso';

-- 4. Show total amount of money.
SELECT SUM(money) AS Total_Money FROM coffee_sales;

-- 5. Retrieve all data in descending order by money.
SELECT * FROM coffee_sales ORDER BY money DESC;

-- 6. Retrieve all data in ascending order by money.
SELECT * FROM coffee_sales ORDER BY money ASC;

-- 7. Retrive data where coffee name is Tea.
SELECT * FROM coffee_sales WHERE coffee_name = 'Tea';

-- 8. Show cash type.
SELECT DISTINCT(cash_type) FROM coffee_sales;

-- 9. Count total number of orders.
SELECT COUNT(*) AS total_orders FROM coffee_sales;

-- 10. Show top 3 data descending order by money.
SELECT * FROM coffee_sales ORDER BY money DESC LIMIT 3;

-- 11. Retrive all data from 'March' month.
SELECT * FROM coffee_sales WHERE MONTH(date) = 3;

-- 12. Total number of cappuccino coffee.
SELECT COUNT(coffee_name) AS Total_Cappuccino FROM coffee_sales WHERE coffee_name = 'Cappuccino';