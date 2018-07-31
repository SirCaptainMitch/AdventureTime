CREATE TABLE [dbo].[DamageTypes] (
    [DamageTypeId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (500) NOT NULL,
    [ShortName]    VARCHAR (500) NOT NULL,
    CONSTRAINT [PK_DamageTypeID] PRIMARY KEY CLUSTERED ([DamageTypeId] ASC),
    CONSTRAINT [UC_DamageTypeName] UNIQUE NONCLUSTERED ([Name] ASC)
);

