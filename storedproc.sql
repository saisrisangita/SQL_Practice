create database stored_proc

--CREATE TABLE Customers (
--    CustomerID INT PRIMARY KEY,
--    CustomerName VARCHAR(100) NOT NULL,
--    Email VARCHAR(100),
--    Phone VARCHAR(20),
--    Address VARCHAR(200)
--);

--CREATE TABLE Orders (
--    OrderID INT PRIMARY KEY,
--    CustomerID INT,
--    OrderDate DATE,
--    TotalAmount DECIMAL(10, 2),  
--);

--INSERT INTO Customers (CustomerID, CustomerName, Email, Phone, Address)
--VALUES (1, 'sai sri', 'saisri@example.com', '123456789', 'Address1'), 
--       (2, 'Durga ', 'Durga@example.com', '9876543210', 'Address2'),
--	   (3, 'divya ', 'divya@example.com', '9876543211', 'Address3'),
--	   (4, 'sangita ', 'sangita@example.com', '9876543212', 'Address4'),
--	   (5, 'udit ', 'udit@example.com', '9876543213', 'Address5'),
--	   (6, 'pramod ', 'pramod@example.com', '9876543214', 'Address6');

--INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
--VALUES (1, 1, '2023-06-01', 100.00 ),
--       (2, 2, '2023-06-05', 250.00 ),
--	   (3, 3, '2023-06-10', 150.00 ),
--       (4, 4, '2023-06-12', 75.50 );

--select * from Customers1;
--select * from Orders1;

alter proc innerjoin
as 
begin  
with cte as(
  select * from joins.dbo.CustomerDetails)
  select * from cte;
end
exec innerjoin;

go

