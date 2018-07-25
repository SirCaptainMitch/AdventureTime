CREATE TABLE [dbo].[WeaponProf] (
    [WeaponProfID]   INT          IDENTITY (1, 1) NOT NULL,
    [WeaponProfName] VARCHAR (50) NOT NULL,
    [WeaponType]     VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_WeaponProfID] PRIMARY KEY CLUSTERED ([WeaponProfID] ASC)
);

