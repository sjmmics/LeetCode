# Write your MySQL query statement below
SELECT p.name
    FROM SalesPerson AS p
    WHERE p.sales_id NOT IN (
        SELECT o.sales_id
        FROM orders AS o
        JOIN company AS c ON o.com_id = c.com_id AND c.name = 'red');