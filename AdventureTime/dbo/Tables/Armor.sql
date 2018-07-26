CREATE TABLE [dbo].[Armor] (
    [ArmorId]          INT           IDENTITY (1, 1) NOT NULL,
    [Name]             VARCHAR (500) NOT NULL,
    [ArmorCategoryID]  INT           NOT NULL,
    [ArmorClass]       INT           NOT NULL,
    [ACMod]            INT           NULL,
    [MaxDex]           INT           NULL,
    [StrengthRequired] INT           NULL,
    [Strength]         BIT           NULL,
    [Stealth]          BIT           NULL,
    [Attunement]       BIT           NULL,
    [Cost]             MONEY         NULL,
    [CostUnit]         VARCHAR (2)   DEFAULT ('gp') NOT NULL,
    [ItemWeight]       MONEY         DEFAULT ((0)) NOT NULL,
    [ArmorText]        TEXT          NULL,
    PRIMARY KEY CLUSTERED ([ArmorID] ASC),
    CONSTRAINT [FK_Amors_ArmorCategory] FOREIGN KEY ([ArmorCategoryID]) REFERENCES [dbo].[ArmorCategory] ([ArmorCategoryID])
);

