CREATE TABLE [dbo].[Size] (
    [SizeId]   TINYINT           IDENTITY (1, 1) NOT NULL,
    [Size]     VARCHAR (10) NOT NULL,
    [SizeDescription] VARCHAR(100) NOT NULL, 
    [Height]   MONEY         NOT NULL,
    [Width]    MONEY         NOT NULL,
    [Unit]     VARCHAR (50)  NOT NULL,
    [IsMetric] BIT           DEFAULT ((0)) NULL,
    CONSTRAINT [PK_SizeID] PRIMARY KEY CLUSTERED ([SizeID] ASC),
    CONSTRAINT [UC_Size_Name] UNIQUE NONCLUSTERED ([Size] ASC)
);

