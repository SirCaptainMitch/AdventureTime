CREATE TABLE [dbo].[Race] (
    [RaceID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (500) NOT NULL,
    [Size]   VARCHAR (2)    NOT NULL,
    [Speed]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([RaceID] ASC)
);

