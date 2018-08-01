CREATE TABLE [dbo].[CharacterStatus] (
    [CharacterStatusId] INT           IDENTITY (1, 1) NOT NULL,
    [CharacterStatus]              VARCHAR (500) NOT NULL,
    [IsActive]          BIT           DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_CharacterStatusId] PRIMARY KEY CLUSTERED ([CharacterStatusId] ASC),
    CONSTRAINT [UC_CharacterStatus] UNIQUE NONCLUSTERED ([CharacterStatus] ASC)
);

