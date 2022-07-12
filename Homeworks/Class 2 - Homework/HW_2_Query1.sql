USE SEDC

--Find all Employees with FirstName = Goran
SELECT * FROM Employees
WHERE FirstName = 'Goran'
GO

--Find all Employees with LastName starting With ‘S’
SELECT * FROM Employees
WHERE LastName LIKE 'S%'
GO

--Find all Employees with DateOfBirth greater than ‘01.01.1988’
SELECT * FROM Employees
WHERE DateOfBirth > '1988-01-01'
GO

--Find allMale employees
SELECT * FROM Employees
WHERE Gender = 'M'
GO

--Find all employees hired in January/1998
SELECT * FROM Employees
WHERE HireDate BETWEEN '1998-01-01' AND '1998-01-31'
GO

--Find all Employees with LastName starting With ‘A’ hired in January/1998
-- nema vakvi
SELECT * FROM Employees
WHERE LastName LIKE 'A%' AND HireDate BETWEEN '1998-01-01' AND '1998-01-31'
GO