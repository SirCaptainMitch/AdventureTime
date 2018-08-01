CREATE TABLE [dbo].[MonsterAction] (
    [MonsterActionId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterId]        INT           NOT NULL,
    [ActionName]       VARCHAR (500) NOT NULL,
    [ActionText]       TEXT          NULL,
    [Attack]           VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([MonsterActionId] ASC),
    CONSTRAINT [FK_MonsterActions_MonsterId] FOREIGN KEY ([MonsterId]) REFERENCES [dbo].[Monster] ([MonsterId])
);

