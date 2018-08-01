CREATE TABLE [dbo].[ClassLevel] (
    [ClassLevelId]    INT           IDENTITY (1, 1) NOT NULL,
    [ClassId]         INT           NOT NULL,
    [ClassLevel]      INT           NOT NULL,
    [FeatureName]     VARCHAR (500) NOT NULL,
    [OptionalFeature] BIT           DEFAULT ((1)) NOT NULL,
    [Proficiency]     VARCHAR (500) NULL,
    [Modifier]        VARCHAR (500) NULL,
    [Category]        VARCHAR (500) NULL,
    [LevelText]       TEXT          NULL,
    CONSTRAINT [FK_ClassLevels_ClassId] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId])
);

