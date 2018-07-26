CREATE TABLE [dbo].[ExchangeRate] (
    [ExchangeRateId] INT           IDENTITY (1, 1) NOT NULL,
    [Coin]           VARCHAR (500) NOT NULL,
    [cp]             MONEY         NOT NULL,
    [sp]             MONEY         NOT NULL,
    [ep]             MONEY         NOT NULL,
    [gp]             MONEY         NOT NULL,
    [pp]             MONEY         NOT NULL,
    CONSTRAINT [PK_ExchangeRateID] PRIMARY KEY CLUSTERED ([ExchangeRateID] ASC),
    CONSTRAINT [UC_Coin] UNIQUE NONCLUSTERED ([Coin] ASC)
);

