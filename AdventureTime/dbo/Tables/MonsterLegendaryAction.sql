﻿CREATE TABLE [dbo].[MonsterLegendaryAction] (
    [MonsterLegendaryActionId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]                 INT           NULL,
    [LegendaryAction]           VARCHAR (500) NULL,
    [LegendaryText]             TEXT          NULL,
    [Attack]                    VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([MonsterLegendaryActionID] ASC),
    CONSTRAINT [FK_MonsterlegendaryActions_MonsterID] FOREIGN KEY ([MonsterID]) REFERENCES [dbo].[Monster] ([MonsterID])
);

