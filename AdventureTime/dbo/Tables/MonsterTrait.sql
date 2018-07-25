CREATE TABLE [dbo].[MonsterTrait] (
    [MonsterTraitsID] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]       INT           NULL,
    [TraitName]       VARCHAR (500) NULL,
    [Attack]          VARCHAR (500) NULL,
    [TraitText]       TEXT          NULL,
    PRIMARY KEY CLUSTERED ([MonsterTraitsID] ASC),
    CONSTRAINT [FK_MonsterTraits_MonsterID] FOREIGN KEY ([MonsterID]) REFERENCES [dbo].[Monsters] ([MonsterID])
);

