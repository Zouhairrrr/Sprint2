-- Q1
SELECT `LastName` FROM employés.

-- Q2
SELECT DISTINCT LastName FROM employees

-- Q3
SELECT * FROM `employees` WHERE LastName= 'Smith'

-- Q4
SELECT * FROM `employees` WHERE LastName= 'Smith' OR LastName= 'Doe'
                          -- Sequend method 
SELECT * FROM `employees` WHERE LastName IN ( 'Smith', 'Doe')

-- Q5
SELECT * FROM `employees` WHERE `Department`= 14

-- Q6
SELECT * FROM `employees` WHERE Department IN (77, 14)

-- Q7
SELECT * FROM `employees` WHERE LastName LIKE 'S%'

-- Q8
SELECT SUM(Budget) FROM `departments`

-- Q9
-- Q10
-- Q11
SELECT x.`Name`, x.`LastName`, y.`Name`, y.`Budget` FROM employees INNER JOIN Department y ON x.Department = y.Code 
-- 
SELECT Employees.Name, LastName, Departments.Name AS DepartmentsName, Budget FROM Employees INNER JOIN Departments ON Employees.Department = Departments.Code

-- Q12
SELECT Name, LastName FROM Employees
  WHERE Department IN
  (SELECT Code FROM Departments WHERE Budget > 60000);

--   Q13
SELECT * FROM Departments  WHERE Budget  > (SELECT AVG(Budget)  FROM Departments );

-- Q14
select Department,count(SSN)
from Employees
group by Department
Having count(SSN)>2


-- Q15
WITH A AS (SELECT MIN(Budget) AS minimum
FROM Departments), B AS (SELECT e.Name as Name,e.LastName AS LastName,d.Budget as Budget
FROM employees as e
LEFT JOIN departments AS d
ON e.Department = d.code)
SELECT B.Name,B.LastName,B.Budget 
FROM A,B
WHERE B.Budget>A.minimum
ORDER BY 3
LIMIT 2

-- Q16
INSERT INTO `departments`(`Code`, `Name`, `Budget`) VALUES ('11','Quality assurance',40000)
INSERT INTO `employees`(`SSN`,`Name`,`LastName`,`Department`) VALUES ('847-21-9811','Mary', 'Moore','l1') 

-- Q17
UPDATE Departments SET Budget = Budget * 0.9;

-- Q18 
UPDATE Employees SET Department = 14 WHERE Department = 77;

-- Q19
WHERE Department = 14;

-- Q20
DELETE FROM Employees
  WHERE Department IN
  (
    SELECT Code FROM Departments
      WHERE Budget >= 60000
  );

-- Q21
DELETE FROM Employees;