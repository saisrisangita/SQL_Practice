create database trigers;


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    TotalAmount DECIMAL(10, 2)
);


CREATE TRIGGER CalculateTotalAmount
ON Orders
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE o
    SET o.TotalAmount = i.Quantity * i.Price
    FROM Orders o
    INNER JOIN inserted i ON o.OrderID = i.OrderID;
END;

INSERT INTO Orders (OrderID, CustomerID, Quantity, Price)
VALUES (1, 101, 5, 10.99);

select * from Orders