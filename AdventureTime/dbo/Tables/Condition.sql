CREATE TABLE [dbo].[Condition] (
    [ConditionID]   INT           IDENTITY (1, 1) NOT NULL,
    [ConditionName] VARCHAR (500) NOT NULL,
    [IsActive]      INT           DEFAULT ((1)) NULL,
    CONSTRAINT [PK_PlayersCharactersID] PRIMARY KEY CLUSTERED ([ConditionID] ASC),
    CONSTRAINT [UC_ConditionName] UNIQUE NONCLUSTERED ([ConditionName] ASC)
);

