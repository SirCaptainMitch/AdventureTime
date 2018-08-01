CREATE TABLE [dbo].[WeaponCategorys] (
    [WeaponCategoryID]   INT          IDENTITY (1, 1) NOT NULL,
    [WeaponCategoryName] VARCHAR (50) NOT NULL,
    [WeaponType]     VARCHAR (50) NOT NULL,
    CONSTRAINT [PK_WeaponCategoryID] PRIMARY KEY CLUSTERED ([WeaponCategoryID] ASC)
);

