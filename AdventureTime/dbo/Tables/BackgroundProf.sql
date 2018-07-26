CREATE TABLE [dbo].[BackgroundProf] (
    [BackgroundProfId] INT           IDENTITY (1, 1) NOT NULL,
    [BackgroundID]     INT           NOT NULL,
    [ProfType]         VARCHAR (500) NOT NULL,
    [ProfFKID]         INT           NULL,
    PRIMARY KEY CLUSTERED ([BackgroundProfID] ASC),
    CONSTRAINT [FK_BackgroundProfs_BackgroundID] FOREIGN KEY ([BackgroundID]) REFERENCES [dbo].[Background] ([BackgroundID])
);

