-- ## METHOD -1

SELECT(SELECT DISTINCT
    Salary 
FROM
    Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1)AS SecondHighestSalary;


-- METHOD - 2 

SELECT max(salary) as SecondHighestSalary FROM Employee
where salary< (select max(salary) from Employee)