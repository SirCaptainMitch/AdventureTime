CREATE TABLE [dbo].[Vehicle] (
    [VehicleId]         INT           IDENTITY (1, 1) NOT NULL,
    [Vehicle]               VARCHAR (500) NOT NULL,
    [Cost]               VARCHAR (500) NOT NULL,
    [CostUnit]           VARCHAR (2)   DEFAULT ('gp') NULL,
    [ItemWeight]         MONEY         NULL,
    [WeightUnit]         VARCHAR (2)   DEFAULT ('lb') NULL,
    [IsTackHarnessDrawn] BIT           DEFAULT ((0)) NULL,
    [IsWaterBorne]       BIT           DEFAULT ((0)) NULL,
    [Speed]              MONEY         NULL,
    [SpeedUnit]          VARCHAR (3)   DEFAULT ('mph') NULL,
    CONSTRAINT [PK_VehicleID] PRIMARY KEY CLUSTERED ([VehicleId] ASC),
    CONSTRAINT [UC_Vehicles] UNIQUE NONCLUSTERED ([Vehicle] ASC)
);

