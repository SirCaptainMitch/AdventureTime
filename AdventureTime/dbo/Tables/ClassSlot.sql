CREATE TABLE [dbo].[ClassSlot] (
    [ClassSlotId]    INT           IDENTITY (1, 1) NOT NULL,
    [ClassId]        INT           NOT NULL,
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
    PRIMARY KEY CLUSTERED ([ClassSlotId] ASC),
    CONSTRAINT [FK_ClassSlots_ClassID] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId])
);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassSlots_classID]
    ON [dbo].[ClassSlot]([ClassId] ASC, [ClassLevel] ASC, [Slots] ASC, [FirstLevel] ASC, [SecondLevel] ASC, [ThirdLevel] ASC, [FourthLevel] ASC, [FifthLevel] ASC, [SixthLevel] ASC, [SeventhLevel] ASC, [EigthLevel] ASC, [NinthLevel] ASC);


GO
CREATE NONCLUSTERED INDEX [NC_IX_ClassSlots_Cantrips]
    ON [dbo].[ClassSlot]([ClassId] ASC, [ClassLevel] ASC, [CantripsKnown] ASC, [SpellsKnown] ASC, [SpellsPrepared] ASC)
    INCLUDE([Slots]);

