CREATE TABLE [dbo].[MonsterMovement] (
    [MonsterMovementId] INT           IDENTITY (1, 1) NOT NULL,
    [MonsterId]         INT           NOT NULL,
    [MovementTypeId]    INT           NOT NULL,
    [Speed]             INT           NOT NULL,
    [SpeedUnit]         VARCHAR (5)   DEFAULT ('ft') NOT NULL,
    [IsHover]           BIT           NULL,
    [MovementText]      VARCHAR (100) NULL,
    CONSTRAINT [PK_MonsterMovementId] PRIMARY KEY CLUSTERED ([MonsterMovementId] ASC),
    CONSTRAINT [FK_MonsterMovement_MonsterId] FOREIGN KEY ([MonsterId]) REFERENCES [dbo].[Monster] ([MonsterId]),
    CONSTRAINT [FK_MonsterMovement_MovementTypeId] FOREIGN KEY ([MovementTypeId]) REFERENCES [dbo].[MovementType] ([MovementTypeId])
);

