CREATE TABLE [dbo].[ClassLevels] (
    [ClassLevelID]    INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]         INT           NOT NULL,
    [ClassLevel]      INT           NOT NULL,
    [FeatureName]     VARCHAR (500) NOT NULL,
    [OptionalFeature] BIT           DEFAULT ((1)) NOT NULL,
    [Proficiency]     VARCHAR (500) NULL,
    [Modifier]        VARCHAR (500) NULL,
    [Category]        VARCHAR (500) NULL,
    [LevelText]       TEXT          NULL,
    CONSTRAINT [FK_ClassLevels_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Classes] ([ClassID])
);

