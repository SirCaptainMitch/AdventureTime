CREATE TABLE [dbo].[ArmorCategory] (
    [ArmorCategoryId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]            VARCHAR (500) NOT NULL,
    [DonTime]         MONEY         NOT NULL,
    [DoffTime]        MONEY         NOT NULL,
    [TimeUnit]        VARCHAR (100) DEFAULT ('Min') NULL,
    CONSTRAINT [PK_ArmorCategoryID] PRIMARY KEY CLUSTERED ([ArmorCategoryId] ASC),
    CONSTRAINT [UC_ArmorCategoryName] UNIQUE NONCLUSTERED ([Name] ASC)
);

