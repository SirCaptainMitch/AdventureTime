﻿--CREATE PROCEDURE dbo.getItemInfo 
--					( 
--						@Name NVARCHAR(MAX) 
--						,@ID NVARCHAR(MAX) 
--					) 
--AS
--	BEGIN 

--IF @ID = 'W'
--	BEGIN 
--		SELECT * 
--		FROM Weapons w 
--			 INNER JOIN WeaponProf wf ON w.WeaponProfID = wf.WeaponProfID 
--		WHERE w.Name LIKE '%' + @Name + '%';
--	END 
--IF @ID = 'A'
--	BEGIN 
--		SELECT * 
--		FROM Armor a 
--			 INNER JOIN ArmorCategory ac ON ac.ArmorCategoryID = a.ArmorCategoryID 
--		WHERE a.Name  LIKE '%' + @Name + '%';
--	END 
--IF @ID = 'S'
--	BEGIN 
--		SELECT * 
--		FROM Spells s 
--		WHERE s.Name  LIKE '%' + @Name + '%';
--	END 

--END 