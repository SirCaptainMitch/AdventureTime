CREATE TABLE [dbo].[ClassArchetype] (
    [ClassArchetypeId] INT           IDENTITY (1, 1) NOT NULL,
    [ClassId]          INT           NOT NULL,
    [Archetype]        VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassArchetypeId] ASC),
    CONSTRAINT [FK_ClassArchetype_ClassID] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId]),
    UNIQUE NONCLUSTERED ([Archetype] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassArchetypes_ClassIDArchetype]
    ON [dbo].[ClassArchetype]([ClassId] ASC, [Archetype] ASC);

