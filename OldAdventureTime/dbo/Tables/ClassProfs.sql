CREATE TABLE [dbo].[ClassProfs] (
    [ClassProfID] INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]     INT           NOT NULL,
    [ProfType]    VARCHAR (500) NOT NULL,
    [ProfFKID]    INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassProfID] ASC),
    CONSTRAINT [FK_ClassProfs_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Classes] ([ClassID])
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassProfs_classID]
    ON [dbo].[ClassProfs]([ClassID] ASC, [ProfFKID] ASC, [ProfType] ASC);

