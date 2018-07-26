CREATE TABLE [dbo].[MonsterAction] (
    [MonsterActionId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]        INT           NOT NULL,
    [ActionName]       VARCHAR (500) NOT NULL,
    [ActionText]       TEXT          NULL,
    [Attack]           VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([MonsterActionID] ASC),
    CONSTRAINT [FK_MonsterActions_MonsterID] FOREIGN KEY ([MonsterID]) REFERENCES [dbo].[Monster] ([MonsterID])
);

