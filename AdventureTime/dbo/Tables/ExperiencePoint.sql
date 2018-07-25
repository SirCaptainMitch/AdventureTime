CREATE TABLE [dbo].[ExperiencePoint] (
    [ExperienceID]        INT IDENTITY (1, 1) NOT NULL,
    [ExperiencePointsMin] INT NOT NULL,
    [ExperiencePointsMax] INT NOT NULL,
    [Level]               INT NOT NULL,
    [ProficiencyBonus]    INT NOT NULL,
    CONSTRAINT [PK_XP] PRIMARY KEY CLUSTERED ([ExperienceID] ASC),
    CONSTRAINT [UC_XP_Level] UNIQUE NONCLUSTERED ([Level] ASC),
    CONSTRAINT [UC_XP_XPMax] UNIQUE NONCLUSTERED ([ExperiencePointsMax] ASC),
    CONSTRAINT [UC_XP_XPMin] UNIQUE NONCLUSTERED ([ExperiencePointsMin] ASC)
);

