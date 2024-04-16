# Write your MySQL query statement below
SELECT 'Low Salary' as category, (SELECT COUNT(*) FROM Accounts WHERE income < 20000) as accounts_count

union

SELECT 'Average Salary' as category, (SELECT COUNT(*) FROM Accounts WHERE income between 20000 and 50000) as accounts_count

union

SELECT 'High Salary' as category, (SELECT COUNT(*) FROM Accounts WHERE income > 50000) as accounts_count