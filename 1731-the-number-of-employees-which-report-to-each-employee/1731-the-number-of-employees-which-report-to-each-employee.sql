# Write your MySQL query statement below
SELECT b.employee_id AS employee_id, b.name, 
        COUNT(a.employee_id) AS reports_count, 
        ROUND(AVG(a.age)) average_age
    FROM Employees AS a
    JOIN Employees AS b ON a.reports_to = b.employee_id
    WHERE a.reports_to IS NOT NULL
    GROUP BY b.employee_id
    ORDER BY b.employee_id;
