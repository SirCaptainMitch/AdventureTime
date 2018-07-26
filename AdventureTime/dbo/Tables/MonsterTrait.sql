CREATE TABLE [dbo].[MonsterTrait] (
    [MonsterTraitId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]       INT           NULL,
    [TraitName]       VARCHAR (500) NULL,
    [Attack]          VARCHAR (500) NULL,
    [TraitText]       TEXT          NULL,
    PRIMARY KEY CLUSTERED ([MonsterTraitID] ASC),
    CONSTRAINT [FK_MonsterTraits_MonsterID] FOREIGN KEY ([MonsterID]) REFERENCES [dbo].[Monster] ([MonsterID])
);

