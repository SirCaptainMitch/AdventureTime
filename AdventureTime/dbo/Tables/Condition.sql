CREATE TABLE [dbo].[Condition] (
    [ConditionId]   INT           IDENTITY (1, 1) NOT NULL,
    [ConditionName] VARCHAR (100) NOT NULL,
    [IsActive]      INT           DEFAULT ((1)) NULL,
    [ConditionText] VARCHAR(1000) NULL, 
    CONSTRAINT [PK_PlayersCharactersId] PRIMARY KEY CLUSTERED ([ConditionId] ASC),
    CONSTRAINT [UC_ConditionName] UNIQUE NONCLUSTERED ([ConditionName] ASC)
);

