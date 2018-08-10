CREATE TABLE [dbo].[MovementType] (
    [MovementTypeId] INT          IDENTITY (1, 1) NOT NULL,
    [Movement]       VARCHAR (50) NULL,
    CONSTRAINT [PK_MovementTypeId] PRIMARY KEY CLUSTERED ([MovementTypeId] ASC)
);

