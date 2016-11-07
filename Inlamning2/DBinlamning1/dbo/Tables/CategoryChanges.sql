CREATE TABLE [dbo].[CategoryChanges] (
    [CategoryChangeID] INT           IDENTITY (1, 1) NOT NULL,
    [CategoryID]       INT           NOT NULL,
    [OldCategoryName]  NVARCHAR (15) NULL,
    [NewCategoryName]  NVARCHAR (15) NULL,
    CONSTRAINT [PK_CategoryChanges] PRIMARY KEY CLUSTERED ([CategoryChangeID] ASC)
);

