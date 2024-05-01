# Write your MySQL query statement below
SELECT Register.contest_id, 
        ROUND(COUNT(Register.contest_id) / (SELECT COUNT(*) FROM users) * 100, 2) AS percentage
    FROM Users
    RIGHT JOIN Register ON Users.user_id = Register.user_id
    GROUP BY Register.contest_id
    ORDER BY percentage DESC, Register.contest_id ASC;
    
    