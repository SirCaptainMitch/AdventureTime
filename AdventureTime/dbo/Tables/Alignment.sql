CREATE TABLE [dbo].[Alignment] (
    [AlignmentId] INT           IDENTITY (1, 1) NOT NULL,
    [Alignment]        VARCHAR (500) NOT NULL,
    [ShortName]   VARCHAR (2)   NOT NULL,
    CONSTRAINT [PK_AlignmentID] PRIMARY KEY CLUSTERED ([AlignmentId] ASC),
    CONSTRAINT [UC_Alignment] UNIQUE NONCLUSTERED ([Alignment] ASC),
    CONSTRAINT [UC_Alignment_ShortName] UNIQUE NONCLUSTERED ([ShortName] ASC)
);

