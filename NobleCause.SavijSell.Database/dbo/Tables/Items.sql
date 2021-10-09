CREATE TABLE [dbo].[Items] (
    [ItemId]       INT           IDENTITY (1, 1) NOT NULL,
    [UserId]       INT           NOT NULL,
    [Title]        VARCHAR (50)  NOT NULL,
    [Description]  VARCHAR (MAX) NOT NULL,
    [Image]        VARCHAR (255) NOT NULL,
    [PostalCode]   VARCHAR (25)  NOT NULL,
    [AskingPrice]  MONEY         NOT NULL,
    [IsActive]     BIT           CONSTRAINT [DF_Items_IsActive] DEFAULT ((1)) NOT NULL,
    [IsSold]       BIT           CONSTRAINT [DF_Items_IsSold] DEFAULT ((0)) NOT NULL,
    [CreatedDate]  DATETIME      CONSTRAINT [DF_Items_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate] DATETIME      CONSTRAINT [DF_Items_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([ItemId] ASC),
    CONSTRAINT [FK_Users_Items] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([UserId])
);

