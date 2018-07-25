CREATE TABLE [dbo].[RaceFeature] (
    [Id]     INT            IDENTITY (1, 1) NOT NULL,
    [RaceID] INT            NOT NULL,
    [Name]   NVARCHAR (250) NULL,
    [Text]   NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_UC_RaceID] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Races] ([RaceID])
);

