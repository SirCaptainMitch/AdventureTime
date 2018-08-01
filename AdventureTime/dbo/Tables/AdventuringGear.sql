CREATE TABLE [dbo].[AdventuringGear] (
    [AdventuringGearId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]              VARCHAR (500) NOT NULL,
    [Cost]              VARCHAR (500) DEFAULT ((0)) NOT NULL,
    [CostUnit]          VARCHAR (2)   DEFAULT ('gp') NOT NULL,
    [ItemWeight]        MONEY         NULL,
    [IsHolySymbol]      BIT           DEFAULT ((0)) NOT NULL,
    [IsFocus]           BIT           DEFAULT ((0)) NOT NULL,
    [IsAmmunition]      BIT           DEFAULT ((0)) NOT NULL,
    [IsTool]            BIT           DEFAULT ((0)) NOT NULL,
    [IsClothing]        BIT           DEFAULT ((0)) NOT NULL,
    [IsInstrument]      BIT           DEFAULT ((0)) NOT NULL,
    [Attunement]        BIT           DEFAULT ((0)) NOT NULL,
    [GearType]          VARCHAR (10)  NULL,
    [Modifier]          VARCHAR (250) DEFAULT (NULL) NULL,
    [Category]          VARCHAR (500) DEFAULT (NULL) NULL,
    [Roll]              VARCHAR (50)  DEFAULT (NULL) NULL,
    [GearText]          VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([AdventuringGearId] ASC)
);

