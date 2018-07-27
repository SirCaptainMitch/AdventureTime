CREATE TABLE [dbo].[DifficultyClasses] (
    [DCID]       INT           IDENTITY (1, 1) NOT NULL,
    [Difficulty] VARCHAR (500) NOT NULL,
    [DC]         INT           NOT NULL,
    CONSTRAINT [PK_DCID] PRIMARY KEY CLUSTERED ([DCID] ASC),
    CONSTRAINT [UC_Diff] UNIQUE NONCLUSTERED ([DC] ASC)
);

