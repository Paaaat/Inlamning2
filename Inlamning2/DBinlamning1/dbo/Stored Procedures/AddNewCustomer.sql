CREATE PROCEDURE AddNewCustomer 
       @ContactName                      NVARCHAR(50)  = NULL   
       --@Createdate                   DATETIME      = NULL   , 
       --@Writer                       NVARCHAR(50)  = NULL   , 
       --@Term_Subdomain               NVARCHAR(50)  = NULL  
AS 
BEGIN 
     SET NOCOUNT ON 

     INSERT INTO Customers
          (                    
            ContactName                     
            --Createdate                  ,
            --Writer                      ,
            --Term_Subdomain                 
          ) 
     VALUES 
          ( 
            @ContactName
            --@Createdate,
            --@Writer,
            --@Term_Subdomain
          ) 
END 

