CREATE TABLE [dbo].[AbilityScore] (
    [AbilityScoreId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (500) NOT NULL,
    [ShortName]      VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([AbilityScoreID] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC),
    UNIQUE NONCLUSTERED ([ShortName] ASC)
);

