CREATE TABLE [dbo].[InsertProduct] (
    [ProductID]    NCHAR (10)    NOT NULL,
    [ProductName]  NVARCHAR (50) NOT NULL,
    [ProductPrice] INT           NOT NULL,
    CONSTRAINT [PK_InsertProduct] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

