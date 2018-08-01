CREATE TABLE [dbo].[MonsterTrait] (
    [MonsterTraitId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterId]       INT           NULL,
    [TraitName]       VARCHAR (500) NULL,
    [Attack]          VARCHAR (500) NULL,
    [TraitText]       TEXT          NULL,
    PRIMARY KEY CLUSTERED ([MonsterTraitId] ASC),
    CONSTRAINT [FK_MonsterTraits_MonsterId] FOREIGN KEY ([MonsterId]) REFERENCES [dbo].[Monster] ([MonsterId])
);

