CREATE PROCEDURE InsertProducts(
  --  @ProductID nchar(5),
    @ProductName nvarchar(40),
    @UnitPrice Money)


AS
    SET NOCOUNT ON;
INSERT INTO [dbo].[Products] ( [ProductName], [UnitPrice]) 
VALUES ( @ProductName, @UnitPrice)