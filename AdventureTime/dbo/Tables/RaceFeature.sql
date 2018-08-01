CREATE TABLE [dbo].[RaceFeature] (
    [RaceFeatureId]     INT            IDENTITY (1, 1) NOT NULL,
    [RaceId] INT            NOT NULL,
    [RaceFeature]   NVARCHAR (250) NULL,
    [Text]   NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([RaceFeatureId] ASC),
    CONSTRAINT [FK_UC_RaceId] FOREIGN KEY ([RaceId]) REFERENCES [dbo].[Race] ([RaceId])
);

