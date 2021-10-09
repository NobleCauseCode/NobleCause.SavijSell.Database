CREATE TABLE [dbo].[ItemTags] (
    [ItemTagId] INT IDENTITY (1, 1) NOT NULL,
    [ItemId]    INT NOT NULL,
    [TagId]     INT NOT NULL,
    CONSTRAINT [PK_ItemTags] PRIMARY KEY CLUSTERED ([ItemTagId] ASC),
    CONSTRAINT [FK_ItemTags_Items] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Items] ([ItemId]),
    CONSTRAINT [FK_ItemTags_Tags] FOREIGN KEY ([TagId]) REFERENCES [dbo].[Tags] ([TagId])
);

