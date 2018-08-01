CREATE TABLE [dbo].[ClassProf] (
    [ClassProfId] INT           IDENTITY (1, 1) NOT NULL,
    [ClassId]     INT           NOT NULL,
    [ProfType]    VARCHAR (500) NOT NULL,
    [ProfFKID]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassProfId] ASC),
    CONSTRAINT [FK_ClassProfs_ClassId] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId])
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassProfs_classId]
    ON [dbo].[ClassProf]([ClassId] ASC, [ProfFKID] ASC, [ProfType] ASC);

