USE SEDC
GO

--HINT: When 'per' is part of the requirement think of grouping the dataset by something!!!

--Calculate the total amount on all orders in the system
SELECT SUM(TotalPrice) AS [Total Ammount of orders]
FROM Orders
GO

--Calculate the total amount per BusinessEntity on all orders in the system
SELECT be.[Name], SUM(TotalPrice) AS [Total Ammount of orders]
FROM Orders o
JOIN BusinessEntities be ON be.Id = o.BusinessEntityId
GROUP BY be.[Name]
GO

--Calculate the total amount per BusinessEntity on all orders in the system from Customers with ID < 20
SELECT be.[Name], o.CustomerId, SUM(TotalPrice) AS [Total Ammount of orders]
FROM Orders o
JOIN BusinessEntities be ON be.Id = o.BusinessEntityId
WHERE o.CustomerId < 20
GROUP BY be.[Name], o.CustomerId
GO

--Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system
SELECT be.[Name], MAX(TotalPrice) AS [Biggest order ammount], AVG(TotalPrice) AS [Average order ammount]
FROM Orders o
JOIN BusinessEntities be ON be.Id = o.BusinessEntityId
GROUP BY be.[Name]
GO