CREATE PROCEDURE dbo.getItemInfo 
					( 
						@Name NVARCHAR(MAX) 
						,@ID NVARCHAR(MAX) 
					) 
AS
	BEGIN 

IF @ID = 'W'
	BEGIN 
		SELECT * 
		FROM Weapon w 
			 INNER JOIN WeaponCategory wf ON w.WeaponCategoryId = wf.WeaponCategoryId
		WHERE w.WeaponName LIKE '%' + @Name + '%';
	END 
IF @ID = 'A'
	BEGIN 
		SELECT * 
		FROM Armor a 
			 INNER JOIN ArmorCategory ac ON ac.ArmorCategoryId = a.ArmorCategoryId
		WHERE a.ArmorName  LIKE '%' + @Name + '%';
	END 
IF @ID = 'S'
	BEGIN 
		SELECT * 
		FROM Spell s 
		WHERE s.[SpellName]  LIKE '%' + @Name + '%';
	END 

END 