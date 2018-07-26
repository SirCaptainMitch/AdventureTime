CREATE TABLE [dbo].[Monster] (
    [MonsterId]    INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (500) NOT NULL,
    [SizeId]         TINYINT NULL,
    [Monstertype]  VARCHAR (500) NULL,
    [Alignment]    VARCHAR (500) NULL,
    [AC]           VARCHAR (500) NULL,
    [HP]           VARCHAR (500) NULL,
    [Strength]     INT           NULL,
    [Dexterity]    INT           NULL,
    [Constitution] INT           NULL,
    [Intelligence] INT           NULL,
    [Wisdom]       INT           NULL,
    [Charisma]     INT           NULL,
    [Saves]        VARCHAR (500) NULL,
    [Skill]        VARCHAR (500) NULL,
    [Immune]       VARCHAR (500) NULL,
    [Senses]       VARCHAR (500) NULL,
    [Languages]    VARCHAR (500) NULL,
    [Passive]      VARCHAR (500) NULL,
    [Speed]        VARCHAR (500) NULL,
    [cr]           MONEY         NULL,
    PRIMARY KEY CLUSTERED ([MonsterID] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_test]
    ON [dbo].[Monster]([Name] ASC, [SizeId] ASC, [Monstertype] ASC)
    INCLUDE([AC], [HP]);

