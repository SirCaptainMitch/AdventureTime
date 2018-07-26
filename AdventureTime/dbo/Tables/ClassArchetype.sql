CREATE TABLE [dbo].[ClassArchetype] (
    [ClassArchetypeId] INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]          INT           NOT NULL,
    [Archetype]        VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassArchetypeID] ASC),
    CONSTRAINT [FK_ClassArchetype_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID]),
    UNIQUE NONCLUSTERED ([Archetype] ASC)
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassArchetypes_ClassIDArchetype]
    ON [dbo].[ClassArchetype]([ClassID] ASC, [Archetype] ASC);

