use employee;
SELECT DISTINCT salary FROM employees;
SELECT age AS Employee_Age, salary AS Employee_Salary 
FROM Employees;
SELECT * FROM Employees 
WHERE salary > 50000 AND hire_date < '2016-01-01';
SET SQL_SAFE_UPDATES = 0;
UPDATE Employees 
SET designation = 'Data Scientist' 
WHERE designation IS NULL OR designation = '';
SELECT * FROM Employees 
ORDER BY department_id ASC, salary DESC;
SELECT * FROM Employees 
WHERE YEAR(hire_date) = 2018 
ORDER BY hire_date ASC 
LIMIT 5;
SELECT SUM(e.salary) AS Total_Finance_Salary
FROM Employees e
JOIN Departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Finance';
SELECT MIN(age) AS Min_Age 
FROM Employees;
DESCRIBE location;
SELECT l.location, MAX(e.salary) AS Max_Salary 
FROM Employees e
JOIN location l ON e.location_id = l.location_id
GROUP BY l.location;
SELECT designation, AVG(salary) AS Avg_Salary 
FROM Employees 
WHERE designation LIKE '%Analyst%' 
GROUP BY designation;
SELECT department_id, COUNT(*) AS Employee_Count 
FROM Employees 
GROUP BY department_id 
HAVING COUNT(*) < 3;
SELECT l.location 
FROM Employees e
JOIN location l ON e.location_id = l.location_id
WHERE e.gender = 'Female'
GROUP BY l.location 
HAVING AVG(e.age) < 30;
SELECT e.employee_name, e.designation, d.department_name 
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.department_id;
SELECT d.department_name, COUNT(e.employee_id) AS Total_Employees 
FROM Departments d
LEFT JOIN Employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;
SELECT l.location, e.employee_name 
FROM Employees e
RIGHT JOIN Location l ON e.location_id = l.location_id;