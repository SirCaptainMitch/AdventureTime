CREATE TABLE [dbo].[LifeStyle] (
    [LifestyleId] INT           IDENTITY (1, 1) NOT NULL,
    [LifeStyle]        VARCHAR (500) NOT NULL,
    [Cost]        VARCHAR (500) NULL,
    [CostUnit]    VARCHAR (2)   DEFAULT ('gp') NULL,
    CONSTRAINT [PK_LifestyleID] PRIMARY KEY CLUSTERED ([LifestyleId] ASC),
    CONSTRAINT [UC_LifeStyleName] UNIQUE NONCLUSTERED ([LifeStyle] ASC)
);

