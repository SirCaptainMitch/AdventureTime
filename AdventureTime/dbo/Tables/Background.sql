CREATE TABLE [dbo].[Background] (
    [BackgroundId] INT  IDENTITY (1, 1) NOT NULL,
    [Background]   VARCHAR (500) NOT NULL,
    PRIMARY KEY CLUSTERED ([BackgroundId] ASC),
    UNIQUE NONCLUSTERED ([Background] ASC)
);

