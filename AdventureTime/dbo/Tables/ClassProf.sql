CREATE TABLE [dbo].[ClassProf] (
    [ClassProfId] INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]     INT           NOT NULL,
    [ProfType]    VARCHAR (500) NOT NULL,
    [ProfFKID]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassProfID] ASC),
    CONSTRAINT [FK_ClassProfs_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Class] ([ClassID])
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassProfs_classID]
    ON [dbo].[ClassProf]([ClassID] ASC, [ProfFKID] ASC, [ProfType] ASC);

