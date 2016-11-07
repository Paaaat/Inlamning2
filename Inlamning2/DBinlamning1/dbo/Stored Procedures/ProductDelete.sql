CREATE procedure ProductDelete (@ProductID int)
as
delete from [Order Details] where ProductID=@ProductID
Delete from Products where ProductID=@ProductID