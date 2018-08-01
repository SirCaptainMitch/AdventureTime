﻿CREATE TABLE [dbo].[Weapon] (
    [WeaponId]            INT           IDENTITY (1, 1) NOT NULL,
    [WeaponName]                VARCHAR (500) NULL,
    [WeaponCategoryId]        INT           NULL,
    [DamageDice]          VARCHAR (500) NULL,
    [VersatileDamageDice] VARCHAR (500) NULL,
    [BaseDamageTypeId]    INT           NULL,
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
    PRIMARY KEY CLUSTERED ([WeaponId] ASC),
    CONSTRAINT [FK_Weapon_BaseDamageTypeId] FOREIGN KEY ([BaseDamageTypeId]) REFERENCES [dbo].[DamageType] ([DamageTypeId]),
    CONSTRAINT [FK_Weapon_WeaponTypeId] FOREIGN KEY ([WeaponCategoryId]) REFERENCES [dbo].[WeaponCategory] ([WeaponCategoryId]),
    UNIQUE NONCLUSTERED ([WeaponName] ASC)
);

