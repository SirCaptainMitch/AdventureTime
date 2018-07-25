CREATE TABLE [dbo].[ClassSlots] (
    [ClassSlotID]    INT           IDENTITY (1, 1) NOT NULL,
    [ClassID]        INT           NOT NULL,
    [ClassLevel]     TINYINT       NULL,
    [Slots]          VARCHAR (500) NULL,
    [FirstLevel]     TINYINT       NULL,
    [SecondLevel]    TINYINT       NULL,
    [ThirdLevel]     TINYINT       NULL,
    [FourthLevel]    TINYINT       NULL,
    [FifthLevel]     TINYINT       NULL,
    [SixthLevel]     TINYINT       NULL,
    [SeventhLevel]   TINYINT       NULL,
    [EigthLevel]     TINYINT       NULL,
    [NinthLevel]     TINYINT       NULL,
    [CantripsKnown]  INT           DEFAULT ((0)) NOT NULL,
    [SpellsKnown]    INT           DEFAULT ((0)) NOT NULL,
    [SpellsPrepared] INT           DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassSlotID] ASC),
    CONSTRAINT [FK_ClassSlots_ClassID] FOREIGN KEY ([ClassID]) REFERENCES [dbo].[Classes] ([ClassID])
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassSlots_Cantrips]
    ON [dbo].[ClassSlots]([ClassID] ASC, [ClassLevel] ASC, [CantripsKnown] ASC, [SpellsKnown] ASC, [SpellsPrepared] ASC)
    INCLUDE([Slots]);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassSlots_classID]
    ON [dbo].[ClassSlots]([ClassID] ASC, [ClassLevel] ASC, [Slots] ASC, [FirstLevel] ASC, [SecondLevel] ASC, [ThirdLevel] ASC, [FourthLevel] ASC, [FifthLevel] ASC, [SixthLevel] ASC, [SeventhLevel] ASC, [EigthLevel] ASC, [NinthLevel] ASC);

