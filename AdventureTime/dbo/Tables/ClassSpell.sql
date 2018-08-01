CREATE TABLE [dbo].[ClassSpell] (
    [ClassSpellId] INT           IDENTITY (1, 1) NOT NULL,
    [ClassId]       INT           NOT NULL,
    [ArchTypeId]    INT           NOT NULL,
    [Components]    VARCHAR (500) NULL,
    [Duration]      VARCHAR (500) NULL,
    [ClassLevel]    INT           NOT NULL,
    [SpellName]     VARCHAR (500) NULL,
    [SpellRange]    VARCHAR (500) NULL,
    [SpellSchool]   VARCHAR (500) NULL,
    [ActionTime]    VARCHAR (500) NULL,
    [SpellText]     TEXT          NULL,
    PRIMARY KEY CLUSTERED ([ClassSpellId] ASC),
    CONSTRAINT [FK_ClassSpells_ArchtypeId] FOREIGN KEY ([ArchTypeId]) REFERENCES [dbo].[ClassArchetype] ([ClassArchetypeId]),
    CONSTRAINT [FK_ClassSpells_ClassId] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId])
);

