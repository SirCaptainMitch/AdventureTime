CREATE TABLE [dbo].[CharacterStatus] (
    [CharacterStatusID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]              VARCHAR (500) NOT NULL,
    [IsActive]          BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_CharacterStatusID] PRIMARY KEY CLUSTERED ([CharacterStatusID] ASC),
    CONSTRAINT [UC_CharacterFName] UNIQUE NONCLUSTERED ([Name] ASC)
);

