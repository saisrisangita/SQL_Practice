CREATE TABLE Orders_Audit (
    AuditID INT IDENTITY(1, 1) PRIMARY KEY,
    OrderID INT,
    Action VARCHAR(10),
    ModifiedDate DATETIME
);

CREATE TRIGGER Trigger_InsertOrderAudit
ON Orders
AFTER INSERT
AS
BEGIN
    INSERT INTO Orders_Audit (OrderID, Action, ModifiedDate)
    SELECT OrderID, 'INSERT', GETDATE()
    FROM inserted;
END


CREATE TRIGGER Trigger_DeleteOrderAudit
ON Orders
AFTER DELETE
AS
BEGIN
    INSERT INTO Orders_Audit (OrderID, Action, ModifiedDate)
    SELECT OrderID, 'DELETE', GETDATE()
    FROM deleted;
END



select * from Orders_Audit