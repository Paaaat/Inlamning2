create PROCEDURE ProductsUpdate(@UnitPrice Money, @ProductID nchar(5))

AS

update Products 
set UnitPrice = @UnitPrice
where (ProductId = @ProductID)