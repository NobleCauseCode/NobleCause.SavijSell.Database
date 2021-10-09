CREATE TABLE [dbo].[Tags] (
    [TagId]       INT           IDENTITY (1, 1) NOT NULL,
    [TagName]     VARCHAR (255) NOT NULL,
    [CreatedDate] DATETIME      CONSTRAINT [DF_Tags_CreatedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED ([TagId] ASC)
);

