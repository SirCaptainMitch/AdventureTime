CREATE TABLE [dbo].[Race] (
    [RaceId] INT            IDENTITY (1, 1) NOT NULL,
    [Name]   NVARCHAR (500) NOT NULL,
    [Size]   VARCHAR (2)    NOT NULL,
    [Speed]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([RaceID] ASC)
);

