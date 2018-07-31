CREATE TABLE [dbo].[AbilityScoreMods] (
    [AbilityScoreModID] INT IDENTITY (1, 1) NOT NULL,
    [ScoreMin]          INT NOT NULL,
    [ScoreMax]          INT NOT NULL,
    [Modifier]          INT NOT NULL,
    CONSTRAINT [PK_AbilityScoreMod] PRIMARY KEY CLUSTERED ([AbilityScoreModID] ASC),
    CONSTRAINT [UC_AbilityScoreMod_Modifier] UNIQUE NONCLUSTERED ([Modifier] ASC),
    CONSTRAINT [UC_AbilityScoreMod_ScoreMax] UNIQUE NONCLUSTERED ([ScoreMax] ASC),
    CONSTRAINT [UC_AbilityScoreMod_ScoreMin] UNIQUE NONCLUSTERED ([ScoreMin] ASC)
);

