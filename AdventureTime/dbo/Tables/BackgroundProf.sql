CREATE TABLE [dbo].[BackgroundProf] (
    [BackgroundProfId] INT           IDENTITY (1, 1) NOT NULL,
    [BackgroundId]     INT           NOT NULL,
    [ProfType]         VARCHAR (500) NOT NULL,
    [ProfFKID]         INT           NULL,
    PRIMARY KEY CLUSTERED ([BackgroundProfId] ASC),
    CONSTRAINT [FK_BackgroundProfs_BackgroundId] FOREIGN KEY ([BackgroundId]) REFERENCES [dbo].[Background] ([BackgroundId])
);

