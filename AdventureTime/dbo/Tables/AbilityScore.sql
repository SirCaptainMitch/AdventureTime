CREATE TABLE [dbo].[AbilityScore] (
    [AbilityScoreId] INT           IDENTITY (1, 1) NOT NULL,
    [AbilityScoreName]           VARCHAR (500) NOT NULL,
    [ShortName]      VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([AbilityScoreId] ASC),
    UNIQUE NONCLUSTERED ([AbilityScoreName] ASC),
    UNIQUE NONCLUSTERED ([ShortName] ASC)
);

