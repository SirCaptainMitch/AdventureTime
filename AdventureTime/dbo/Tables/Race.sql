CREATE TABLE [dbo].[Race] (
    [RaceId] INT  IDENTITY (1, 1) NOT NULL
      CONSTRAINT PK_Race_RaceId PRIMARY KEY CLUSTERED (RaceId),
    [RaceName]   NVARCHAR (500) NOT NULL,
    [SizeId]   TINYINT    NOT NULL
      CONSTRAINT FK_Race_SizeId FOREIGN KEY (SizeId) REFERENCES dbo.Size (SizeId),
    [Speed]  INT            NOT NULL,
    
);

