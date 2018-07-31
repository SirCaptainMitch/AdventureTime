CREATE TABLE [dbo].[Monster] (
    [MonsterId]    INT           IDENTITY (1, 1) NOT NULL,
    [MonsterName]         VARCHAR (500) NOT NULL,
    [SizeId]         TINYINT NULL
      CONSTRAINT FK_Monster_SizeId FOREIGN KEY REFERENCES dbo.Size (SizeId) ,
    [Monstertype]  VARCHAR (500) NULL,
    [Alignment]    VARCHAR (500) NULL,
    [AC]           VARCHAR (500) NULL,
    [HP]           VARCHAR (500) NULL,
    [PassivePerception]      VARCHAR (500) NULL,
    [Speed]        VARCHAR (500) NULL,
    [cr]           MONEY         NULL,
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
    PRIMARY KEY CLUSTERED ([MonsterID] ASC),
    UNIQUE NONCLUSTERED ([MonsterName] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_test]
    ON [dbo].[Monster]([MonsterName] ASC, [SizeId] ASC, [Monstertype] ASC)
    INCLUDE([AC], [HP]);

