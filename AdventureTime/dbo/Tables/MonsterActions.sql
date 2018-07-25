CREATE TABLE [dbo].[MonsterActions] (
    [MonsterActionsID] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterID]        INT           NOT NULL,
    [ActionName]       VARCHAR (500) NOT NULL,
    [ActionText]       TEXT          NULL,
    [Attack]           VARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([MonsterActionsID] ASC),
    CONSTRAINT [FK_MonsterActions_MonsterID] FOREIGN KEY ([MonsterID]) REFERENCES [dbo].[Monsters] ([MonsterID])
);

