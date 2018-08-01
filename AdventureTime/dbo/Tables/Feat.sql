CREATE TABLE [dbo].[Feat] (
    [FeatId]       INT           IDENTITY (1, 1) NOT NULL,
    [FeatName]         VARCHAR (500) NOT NULL,
    [Prerequisite] VARCHAR (500) NULL,
    [Modifier]     VARCHAR (500) NULL,
    [Category]     VARCHAR (500) NULL,
    [FeatText]     TEXT          NULL,
    PRIMARY KEY CLUSTERED ([FeatId] ASC),
    UNIQUE NONCLUSTERED ([FeatName] ASC)
);

