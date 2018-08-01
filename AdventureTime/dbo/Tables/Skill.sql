CREATE TABLE [dbo].[Skill] (
    [SkillId]        INT           IDENTITY (1, 1) NOT NULL,
    [SkillName]           VARCHAR (500) NOT NULL,
    [AbilityScoreId] INT           NOT NULL,
    CONSTRAINT [PK_SkillsId] PRIMARY KEY CLUSTERED ([SkillId] ASC),
    CONSTRAINT [FK_Skills_AbilitScoreId] FOREIGN KEY ([AbilityScoreId]) REFERENCES [dbo].[AbilityScore] ([AbilityScoreId]),
    CONSTRAINT [UC_Skill] UNIQUE NONCLUSTERED ([SkillName] ASC)
);

