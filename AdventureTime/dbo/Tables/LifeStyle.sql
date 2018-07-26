CREATE TABLE [dbo].[LifeStyle] (
    [LifestyleId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (500) NOT NULL,
    [Cost]        VARCHAR (500) NULL,
    [CostUnit]    VARCHAR (2)   DEFAULT ('gp') NULL,
    CONSTRAINT [PK_LifestyleID] PRIMARY KEY CLUSTERED ([LifestyleID] ASC),
    CONSTRAINT [UC_LifeStyleName] UNIQUE NONCLUSTERED ([Name] ASC)
);

