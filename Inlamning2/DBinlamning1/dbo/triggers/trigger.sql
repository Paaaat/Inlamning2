
create TRIGGER ContactNameChanges
   ON  Customers 
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	    SET NOCOUNT ON

    INSERT INTO ContactNameChange
        ([CustomerID], [ContactName], [ContactNameChange])
        SELECT i.[CustomerID], d.[ContactName], i.[ContactName]
            FROM inserted i
              INNER JOIN deleted d ON i.[CustomerID]=d.[CustomerID]
            WHERE d.[ContactName] <> i.[ContactName]
   

END
GO
