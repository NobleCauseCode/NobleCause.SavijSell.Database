CREATE TABLE [dbo].[UserItems] (
    [UserItemId]    INT      IDENTITY (1, 1) NOT NULL,
    [UserId]        INT      NOT NULL,
    [ItemId]        INT      NOT NULL,
    [PurchasePrice] MONEY    NOT NULL,
    [CreatedDate]   DATETIME CONSTRAINT [DF_UserItems_CreatedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_UserItems] PRIMARY KEY CLUSTERED ([UserItemId] ASC),
    CONSTRAINT [FK_UserItems_Items] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Items] ([ItemId]),
    CONSTRAINT [FK_UserItems_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

