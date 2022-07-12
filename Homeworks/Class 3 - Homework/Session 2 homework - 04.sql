USE SEDC
GO

--List all possible combinations of Customer names and Product names that can be ordered from specific customer
SELECT cu.Name, p.Name FROM Customers cu
CROSS JOIN
Products p
ORDER BY cu.Name
GO

--List all Business Entities that has any order
SELECT be.Id, be.Name, o.BusinessEntityId FROM BusinessEntities as be
JOIN
Orders as o 
ON be.Id = o.BusinessEntityId
ORDER BY be.Id
GO

--List all Entities without orders
SELECT be.Id, be.Name, o.BusinessEntityId FROM BusinessEntities as be
LEFT JOIN
Orders as o 
ON be.Id = o.BusinessEntityId
WHERE o.BusinessEntityId is null
GO

--List all Customers without orders (using Right Join)

SELECT o.CustomerId, cu.Name FROM Orders o
RIGHT JOIN
Customers cu
ON o.CustomerId is null
GO