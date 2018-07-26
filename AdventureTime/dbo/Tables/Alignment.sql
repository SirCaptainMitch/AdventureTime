CREATE TABLE [dbo].[Alignment] (
    [AlignmentId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (500) NOT NULL,
    [ShortName]   VARCHAR (2)   NOT NULL,
    CONSTRAINT [PK_AlignmentID] PRIMARY KEY CLUSTERED ([AlignmentID] ASC),
    CONSTRAINT [UC_Alignment] UNIQUE NONCLUSTERED ([Name] ASC),
    CONSTRAINT [UC_Alignment_ShortName] UNIQUE NONCLUSTERED ([ShortName] ASC)
);

