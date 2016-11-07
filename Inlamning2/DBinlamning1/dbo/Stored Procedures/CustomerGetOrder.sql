--Skapa en stored procedure för att hämta alla ordrar för en kund. Den skall ha namnet 
--CustomerGetOrders och visa kundnamn, orderdatum och kontaktperson från kund- och kundordertabellen. Inparameter skall vara kundid.

create procedure CustomerGetOrder (@CustomerID int)
as
SELECT Customers.ContactName AS kundid, Orders.OrderDate AS datum, Suppliers.ContactName AS [företags kontakt]
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID CROSS JOIN
                         Suppliers
						 exec CustomerGetOrder 1