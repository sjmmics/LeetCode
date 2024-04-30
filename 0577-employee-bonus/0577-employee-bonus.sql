# Write your MySQL query statement below
SELECT m.name, b.bonus
    FROM Employee AS m
    LEFT JOIN Bonus AS b ON m.empId = b.empId
    WHERE b.bonus IS NULL OR b.bonus < 1000;
    