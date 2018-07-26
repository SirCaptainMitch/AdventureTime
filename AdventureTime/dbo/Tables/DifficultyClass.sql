CREATE TABLE [dbo].[DifficultyClass] (
    [DifficultyClassId]       INT           IDENTITY (1, 1) NOT NULL,
    [Difficulty] VARCHAR (500) NOT NULL,
    [DC]         INT           NOT NULL,
    CONSTRAINT [PK_DCID] PRIMARY KEY CLUSTERED ([DifficultyClassId] ASC),
    CONSTRAINT [UC_Diff] UNIQUE NONCLUSTERED ([DC] ASC)
);

