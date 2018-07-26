CREATE TABLE [dbo].[Spell] (
    [SpellId]   INT           IDENTITY (1, 1) NOT NULL,
    [SpellName]  VARCHAR (500) NOT NULL,
    [SpellLevel] INT           DEFAULT ((1)) NOT NULL,
    [School]     VARCHAR (500) NULL,
    [Ritual]     BIT           DEFAULT ((0)) NOT NULL,
    [SpellTime]  VARCHAR (500) NULL,
    [SpellRange] VARCHAR (500) NULL,
    [Components] VARCHAR (500) NULL,
    [Duration]   VARCHAR (500) NULL,
    [Classes]    VARCHAR (500) NULL,
    [SpellText]  TEXT          NULL,
    PRIMARY KEY CLUSTERED ([SpellID] ASC)
);

