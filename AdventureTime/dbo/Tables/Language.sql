CREATE TABLE [dbo].[Language] (
    [LanguagesID]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (500) NOT NULL,
    [Script]          VARCHAR (500) NULL,
    [TypicalSpeakers] VARCHAR (500) NULL,
    [IsExotic]        BIT           NULL,
    CONSTRAINT [PK_LID] PRIMARY KEY CLUSTERED ([LanguagesID] ASC),
    CONSTRAINT [UC_name] UNIQUE NONCLUSTERED ([Name] ASC)
);

