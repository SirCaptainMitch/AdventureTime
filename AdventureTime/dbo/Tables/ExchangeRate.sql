CREATE TABLE [dbo].[ExchangeRate] (
    [ExchangeRateId] INT           IDENTITY (1, 1) NOT NULL,
    [Coin]           VARCHAR (500) NOT NULL,
    [CopperPieces]             MONEY         NOT NULL,
    [SilverPieces]             MONEY         NOT NULL,
    [ElectrumPieces]             MONEY         NOT NULL,
    [GoldPieces]             MONEY         NOT NULL,
    [PlatniumPieces]             MONEY         NOT NULL,
    CONSTRAINT [PK_ExchangeRateId] PRIMARY KEY CLUSTERED ([ExchangeRateId] ASC),
    CONSTRAINT [UC_Coin] UNIQUE NONCLUSTERED ([Coin] ASC)
);
