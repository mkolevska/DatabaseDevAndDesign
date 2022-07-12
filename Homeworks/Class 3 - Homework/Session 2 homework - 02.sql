USE SEDC
GO

--List all BusinessEntity Names and Customer Names in single result set with duplicates
SELECT [Name] AS [All names] FROM BusinessEntities
UNION ALL
SELECT [Name] FROM Customers
GO

--List all regions where some BusinessEntity is based, or some Customer is based. Remove duplicates
SELECT Region [All regions] FROM BusinessEntities
UNION
SELECT RegionName FROM Customers
GO

--List all regions where we have BusinessEntities and Customers in the same time
SELECT Region AS [Mutual Regions] FROM BusinessEntities
INTERSECT
SELECT RegionName FROM Customers
GO
