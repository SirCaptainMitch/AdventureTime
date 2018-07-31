CREATE TABLE [dbo].[RaceProfs] (
    [RaceProfId] INT           IDENTITY (1, 1) NOT NULL,
    [RaceID]     INT           NOT NULL,
    [type]       NVARCHAR (50) NULL,
    [Modifier]   INT           DEFAULT (NULL) NULL,
    [ProfFKID]   INT           NULL,
    PRIMARY KEY CLUSTERED ([RaceProfId] ASC),
    CONSTRAINT [FK_UC_ClPR__RaceID] FOREIGN KEY ([RaceID]) REFERENCES [dbo].[Races] ([RaceID])
);

