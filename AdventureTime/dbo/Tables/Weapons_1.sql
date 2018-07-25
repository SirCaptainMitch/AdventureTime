﻿CREATE TABLE [dbo].[Weapons] (
    [WeaponID]            INT           IDENTITY (1, 1) NOT NULL,
    [Name]                VARCHAR (500) NULL,
    [WeaponProfID]        INT           NULL,
    [DamageDice]          VARCHAR (500) NULL,
    [VersatileDamageDice] VARCHAR (500) NULL,
    [BaseDamageTypeID]    INT           NULL,
    [RangeMin]            INT           NULL,
    [RangeMax]            INT           NULL,
    [Cost]                DECIMAL (18)  NULL,
    [CostUnit]            VARCHAR (2)   NULL,
    [ItemWeight]          MONEY         NULL,
    [IsFinesse]           BIT           NULL,
    [IsLight]             BIT           NULL,
    [IsThrown]            BIT           NULL,
    [IsTwoHanded]         BIT           NULL,
    [IsReach]             BIT           NULL,
    [IsLoaded]            BIT           NULL,
    [IsHeavy]             BIT           NULL,
    [IsSpecial]           BIT           NULL,
    [Ammunition]          BIT           NULL,
    [WeaponText]          TEXT          NULL,
    PRIMARY KEY CLUSTERED ([WeaponID] ASC),
    CONSTRAINT [FK_Weapons_BaseDamageTypeID] FOREIGN KEY ([BaseDamageTypeID]) REFERENCES [dbo].[DamageTypes] ([DamageTypeId]),
    CONSTRAINT [FK_Weapons_WeaponProfID] FOREIGN KEY ([WeaponProfID]) REFERENCES [dbo].[WeaponProfs] ([WeaponProfID]),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

