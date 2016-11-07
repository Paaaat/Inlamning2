CREATE TABLE [dbo].[UpdateProducts] (
    [ChangedProductID]    NCHAR (10)    NOT NULL,
    [ChangedProductName]  NVARCHAR (50) NOT NULL,
    [ChangedProductPrice] INT           NOT NULL,
    [ProductID]           NCHAR (10)    NOT NULL,
    [ProductName]         NVARCHAR (50) NOT NULL,
    [ProductPrice]        INT           NOT NULL,
    CONSTRAINT [PK_UpdateProducts] PRIMARY KEY CLUSTERED ([ChangedProductID] ASC)
);

