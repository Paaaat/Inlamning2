CREATE PROCEDURE InsertCustomers(
    @CustomerID nchar(5),
    @CompanyName nvarchar(40),
    @ContactName nvarchar(30),    
    @Phone nvarchar(24))
    

AS
    SET NOCOUNT OFF;
INSERT INTO [dbo].[Customers] ([CustomerID], [CompanyName], [ContactName], [Phone]) 
VALUES (@CustomerID, @CompanyName, @ContactName, @Phone)