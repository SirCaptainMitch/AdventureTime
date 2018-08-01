CREATE TABLE [dbo].[Tool] (
    [ToolId]             INT           IDENTITY (1, 1) NOT NULL,
    [ToolName]                VARCHAR (500) NOT NULL,
    [Cost]                VARCHAR (500) NOT NULL,
    [CostUnit]            VARCHAR (2)   DEFAULT ('gp') NULL,
    [ItemWeight]          MONEY         NULL,
    [WeightUnit]          VARCHAR (2)   DEFAULT ('lb') NULL,
    [IsGamingSet]         BIT           DEFAULT ((0)) NULL,
    [IsArtisan]           BIT           DEFAULT ((0)) NULL,
    [IsMusicalInstrument] BIT           DEFAULT ((0)) NULL,
    CONSTRAINT [PK_ToolsID] PRIMARY KEY CLUSTERED ([ToolId] ASC),
    CONSTRAINT [UC_ToolsName] UNIQUE NONCLUSTERED ([ToolName] ASC)
);

