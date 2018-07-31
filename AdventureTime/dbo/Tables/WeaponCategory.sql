CREATE TABLE [dbo].[WeaponCategory] (
    [WeaponCategoryId]   INT IDENTITY (1, 1) NOT NULL,
    [WeaponTypeName] VARCHAR (50) NOT NULL,
    [WeaponType]     VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_WeaponCategory] PRIMARY KEY CLUSTERED ([WeaponCategoryId] ASC)
);

