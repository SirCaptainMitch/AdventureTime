CREATE TABLE [dbo].[Backgrounds] (
    [BackgroundID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([BackgroundID] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

