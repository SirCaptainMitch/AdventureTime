CREATE TABLE [dbo].[Container] (
    [ContainerId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (500) NOT NULL,
    [Capacity]    VARCHAR (500) NOT NULL,
    CONSTRAINT [PK_ContainerID] PRIMARY KEY CLUSTERED ([ContainerID] ASC),
    CONSTRAINT [UC_Container] UNIQUE NONCLUSTERED ([Name] ASC)
);

