CREATE DATABASE SEDC;

-- ovie gi napraviv zasto koga go izgasiv querryto i go upaliv od novo kaj CREATE TABLE mi svetea crveni. 
DROP TABLE IF EXISTS [BusinessEntity];
DROP TABLE IF EXISTS [Employee];
DROP TABLE IF EXISTS [Product];
DROP TABLE IF EXISTS [Customer];
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS [OrderDetails];

CREATE TABLE [BusinessEntity](
[Id] int identity(1,1) not null,
[Name] nvarchar(100) null,
[Region] nvarchar(1000) null,
[Zipcode] nvarchar(10) null,
[Size] nvarchar(10) null
);

CREATE TABLE [Employee](
[Id] int identity(1,1) not null,
[FirstName] nvarchar(100) not null,
[LastName] nvarchar(100) not null,
[DateOfBirth] date null,
[Gender] nchar(1) null,
[HireDate] date null,
[NationalIdNumber] nvarchar(20) null
);

CREATE TABLE [Product](
[Id] int identity(1,1) not null,
[Code] nvarchar(50) null,
[Name] nvarchar(100) null,
[Description] nvarchar(MAX) null,
[Weight] decimal(18, 2) null,
[Price] decimal(18, 2) null,
[Cost] decimal(18,2) null
);

CREATE TABLE [Customer](
[Id] int identity(1,1) not null,
[Name] nvarchar(100) not null,
[AccountNumber] nvarchar(50) null,
[City] nvarchar(100) null,
[RegionName] nvarchar(100) null,
[CustomerSize] nvarchar(10) null,
[PhoneNumber] nvarchar(20) null,
[isActive] bit not null
);

CREATE TABLE [Order](
[Id] bigint identity(1,1) not null,
[OrderDate] datetime null,
[Status] smallint null,
[BusinessEntityId] int null,
[CustomerId] int null,
[EmpolyeeId] int null,
[TotalPrice] decimal(18, 2) null,
[Comment] nvarchar(MAX) null
);

CREATE TABLE [OrderDetails](
[Id] bigint identity(1,1) not null,
[OrderId] bigint null,
[ProductId] int null,
[Quantity] int null,
[Price] decimal(18, 2) null
);

INSERT INTO [BusinessEntity]([Name], [Region], [Zipcode], [Size])
VALUES
('Vlae dooel', 'Skopje', '1000', '10'),
('Example dooel', 'Tetovo', '1200', '100');

INSERT INTO [Employee]([FirstName], [LastName], [DateOfBirth] )
VALUES ('Kristijan', 'Karanfilovski', '1995-06-26');

INSERT INTO [Product]([Name], [Price])
VALUES('Beer', 0.5);

INSERT INTO [Customer]([Name], [City], isActive)
VALUES('Ilija', 'Skopje', 1);

INSERT INTO [Order](OrderDate)
VALUES('2022-05-24 16:05:20');

INSERT INTO [OrderDetails]([OrderId])
SELECT Id 
FROM [Order]
WHERE Id = 1;

SELECT * FROM [BusinessEntity];
SELECT * FROM [Employee];
SELECT * FROM [Product];
SELECT * FROM [Customer];
SELECT * FROM [Order];
SELECT * FROM [OrderDetails];