CREATE TABLE [dbo].[Tradegood] (
    [TradegoodId] INT            IDENTITY (1, 1) NOT NULL,
    [Goods]        NVARCHAR (500) NOT NULL,
    [Cost]         NVARCHAR (500) NULL,
    [CostUnit]     NVARCHAR (2)   DEFAULT ('gp') NULL,
    CONSTRAINT [PK_TradegoodsID] PRIMARY KEY CLUSTERED ([TradegoodID] ASC),
    CONSTRAINT [UC_Tradegoods] UNIQUE NONCLUSTERED ([Goods] ASC)
);

