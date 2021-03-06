﻿CREATE TABLE [dbo].[Mount] (
    [MountId]         INT           IDENTITY (1, 1) NOT NULL,
    [MountName]             VARCHAR (500) NOT NULL,
    [Cost]             VARCHAR (500) NOT NULL,
    [CostUnit]         VARCHAR (2)   DEFAULT ('gp') NULL,
    [Speed]            INT           NOT NULL,
    [SpeedUnit]        VARCHAR (2)   DEFAULT ('ft') NULL,
    [CarryingCapacity] INT           NOT NULL,
    [CapacityUnit]     VARCHAR (2)   DEFAULT ('lb') NULL,
    CONSTRAINT [PK_MountsID] PRIMARY KEY CLUSTERED ([MountId] ASC),
    CONSTRAINT [UC_MountsName] UNIQUE NONCLUSTERED ([MountName] ASC)
);

