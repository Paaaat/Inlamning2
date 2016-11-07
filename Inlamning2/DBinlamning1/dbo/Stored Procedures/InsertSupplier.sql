create procedure InsertSupplier (@SupplierID int, @CompanyName varchar(50))
as
insert into dbo.Suppliers
(SupplierID, CompanyName)
values
(@SupplierID, @CompanyName)
