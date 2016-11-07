CREATE TABLE [dbo].[InsertCustomer] (
    [CustomerID]  NCHAR (10)    NOT NULL,
    [CompanyName] NVARCHAR (50) NOT NULL,
    [ContactName] NVARCHAR (50) NOT NULL,
    [Phone]       NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_InsertCustomer] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

