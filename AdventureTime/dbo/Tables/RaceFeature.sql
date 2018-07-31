CREATE TABLE [dbo].[RaceFeature] (
    [RaceFeatureId]     INT            IDENTITY (1, 1) NOT NULL,
    [RaceID] INT            NOT NULL,
    [Name]   NVARCHAR (250) NULL,
    [Text]   NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([RaceFeatureId] ASC),
    CONSTRAINT [FK_UC_RaceID] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Race] ([RaceID])
);

