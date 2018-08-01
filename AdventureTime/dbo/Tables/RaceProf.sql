CREATE TABLE [dbo].[RaceProf] (
    [RaceProfId] INT           IDENTITY (1, 1) NOT NULL,
    [RaceId]     INT           NOT NULL,
    [Type]       NVARCHAR (50) NULL,
    [Modifier]   INT           DEFAULT (NULL) NULL,
    [ProfFKID]   INT           NULL,
    PRIMARY KEY CLUSTERED ([RaceProfId] ASC),
    CONSTRAINT [FK_UC_ClPR__RaceId] FOREIGN KEY ([RaceId]) REFERENCES [dbo].[Race] ([RaceId])
);

