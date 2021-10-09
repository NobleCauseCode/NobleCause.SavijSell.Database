CREATE TABLE [dbo].[Users] (
    [UserId]       INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]    VARCHAR (50)  NOT NULL,
    [LastName]     VARCHAR (50)  NOT NULL,
    [Email]        VARCHAR (255) NOT NULL,
    [Password]     VARCHAR (MAX) NOT NULL,
    [PostalCode]   VARCHAR (25)  NOT NULL,
    [UserName]     VARCHAR (15)  NOT NULL,
    [Picture]      VARCHAR (255) NULL,
    [Active]       BIT           CONSTRAINT [DF_Users_Active] DEFAULT ((1)) NOT NULL,
    [IsConfirmed]  BIT           CONSTRAINT [DF_Users_IsConfirmed] DEFAULT ((0)) NOT NULL,
    [CreatedDate]  DATETIME      CONSTRAINT [DF_Users_CreatedDate] DEFAULT (getdate()) NOT NULL,
    [ModifiedDate] DATETIME      CONSTRAINT [DF_Users_ModifiedDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserId] ASC)
);

