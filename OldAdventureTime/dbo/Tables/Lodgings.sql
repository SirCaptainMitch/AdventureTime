CREATE TABLE [dbo].[Lodgings] (
    [LodgingID]   INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (500) NOT NULL,
    [Cost]        NVARCHAR (500) NOT NULL,
    [CostUnit]    NVARCHAR (2)   DEFAULT ('gp') NULL,
    [LifeStyleID] INT            DEFAULT (NULL) NULL,
    CONSTRAINT [PK_LodgingID] PRIMARY KEY CLUSTERED ([LodgingID] ASC),
    CONSTRAINT [UC_LodgingName] UNIQUE NONCLUSTERED ([Name] ASC)
);

