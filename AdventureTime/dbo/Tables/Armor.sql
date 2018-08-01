CREATE TABLE [dbo].[Armor] (
    [ArmorId]          INT           IDENTITY (1, 1) NOT NULL,
    [ArmorName]             VARCHAR (500) NOT NULL,
    [ArmorCategoryId]  INT           NOT NULL,
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
    PRIMARY KEY CLUSTERED ([ArmorId] ASC),
    CONSTRAINT [FK_Amors_ArmorCategory] FOREIGN KEY ([ArmorCategoryId]) REFERENCES [dbo].[ArmorCategory] ([ArmorCategoryId])
);

