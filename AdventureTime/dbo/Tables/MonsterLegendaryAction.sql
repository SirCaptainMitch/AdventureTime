CREATE TABLE [dbo].[MonsterLegendaryAction] (
    [MonsterLegendaryActionId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterId]                 INT           NULL,
    [LegendaryAction]           VARCHAR (500) NULL,
    [LegendaryText]             TEXT          NULL,
    [Attack]                    VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([MonsterLegendaryActionId] ASC),
    CONSTRAINT [FK_MonsterlegendaryActions_MonsterId] FOREIGN KEY ([MonsterId]) REFERENCES [dbo].[Monster] ([MonsterId])
);

