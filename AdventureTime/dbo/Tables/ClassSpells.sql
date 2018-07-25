CREATE TABLE [dbo].[ClassSpells] (
    [ClassSpellsID] INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]       INT           NOT NULL,
    [ArchTypeID]    INT           NOT NULL,
    [Components]    VARCHAR (500) NULL,
    [Duration]      VARCHAR (500) NULL,
    [ClassLevel]    INT           NOT NULL,
    [SpellName]     VARCHAR (500) NULL,
    [SpellRange]    VARCHAR (500) NULL,
    [SpellSchool]   VARCHAR (500) NULL,
    [ActionTime]    VARCHAR (500) NULL,
    [SpellText]     TEXT          NULL,
    PRIMARY KEY CLUSTERED ([ClassSpellsID] ASC),
    CONSTRAINT [FK_ClassSpells_ArchtypeID] FOREIGN KEY ([ArchTypeID]) REFERENCES [dbo].[ClassArchetypes] ([ClassArchetypeID]),
    CONSTRAINT [FK_ClassSpells_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Classes] ([ClassID])
);

