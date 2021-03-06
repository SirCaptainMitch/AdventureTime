﻿CREATE TABLE [dbo].[BackgroundTraits] (
    [BackgroundTraitID] INT           IDENTITY (1, 1) NOT NULL,
    [BackgroundID]      INT           NULL,
    [TraitName]         VARCHAR (500) NULL,
    [TraitText]         TEXT          NULL,
    PRIMARY KEY CLUSTERED ([BackgroundTraitID] ASC),
    CONSTRAINT [FK_BackgroundTraits] FOREIGN KEY ([BackgroundID]) REFERENCES [dbo].[Backgrounds] ([BackgroundID])
);

