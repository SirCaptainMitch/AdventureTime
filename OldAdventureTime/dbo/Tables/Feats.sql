CREATE TABLE [dbo].[Feats] (
    [FeatID]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]         VARCHAR (500) NOT NULL,
    [Prerequisite] VARCHAR (500) NULL,
    [Modifier]     VARCHAR (500) NULL,
    [Category]     VARCHAR (500) NULL,
    [FeatText]     TEXT          NULL,
    PRIMARY KEY CLUSTERED ([FeatID] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

