CREATE TABLE [dbo].[Skill] (
    [SkillID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (500) NOT NULL,
    [AbilityScoreID] INT           NOT NULL,
    CONSTRAINT [PK_SkillsID] PRIMARY KEY CLUSTERED ([SkillID] ASC),
    CONSTRAINT [FK_Skills_AbilitScoreID] FOREIGN KEY ([AbilityScoreID]) REFERENCES [dbo].[AbilityScores] ([AbilityScoreID]),
    CONSTRAINT [UC_Skill] UNIQUE NONCLUSTERED ([Name] ASC)
);

