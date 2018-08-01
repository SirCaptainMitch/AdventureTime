CREATE TABLE [dbo].[Tradegood] (
    [TradegoodId] INT            IDENTITY (1, 1) NOT NULL,
    [Good]        NVARCHAR (500) NOT NULL,
    [Cost]         NVARCHAR (500) NULL,
    [CostUnit]     NVARCHAR (2)   DEFAULT ('gp') NULL,
    CONSTRAINT [PK_TradegoodsId] PRIMARY KEY CLUSTERED ([TradegoodId] ASC),
    CONSTRAINT [UC_Tradegood] UNIQUE NONCLUSTERED ([Good] ASC)
);

