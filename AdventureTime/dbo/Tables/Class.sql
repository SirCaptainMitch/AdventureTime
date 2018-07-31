CREATE TABLE [dbo].[Class] (
    [ClassId]             INT           IDENTITY (1, 1) NOT NULL,
    [Name]                VARCHAR (500) NOT NULL,
    [HitDie]              INT           NOT NULL,
    [SpellAbilityScoreID] INT           NULL,
    PRIMARY KEY CLUSTERED ([ClassID] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

