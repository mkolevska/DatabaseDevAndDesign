USE SEDC
GO

--Change Products table always to insert value 1 in price column if no price is provided on insert
ALTER TABLE Products
ADD CONSTRAINT Default_price
DEFAULT 1 for Price
GO

--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
ALTER TABLE Products
ADD CONSTRAINT CHK_price 
CHECK(Price < 2 * Cost)
GO

--Change Products table to guarantee unique names across the products
ALTER TABLE Products
ADD CONSTRAINT UC_Name
UNIQUE ([Name])

-- frla exception zatoa sto vekje ima ime sto se povtoruva.