CREATE TABLE [dbo].[Container] (
    [ContainerId] INT           IDENTITY (1, 1) NOT NULL,
    [ContainerName]        VARCHAR (500) NOT NULL,
    [Capacity]    VARCHAR (500) NOT NULL,
    CONSTRAINT [PK_ContainerId] PRIMARY KEY CLUSTERED ([ContainerId] ASC),
    CONSTRAINT [UC_Container] UNIQUE NONCLUSTERED ([ContainerName] ASC)
);

