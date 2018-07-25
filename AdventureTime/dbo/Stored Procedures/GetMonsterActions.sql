
CREATE PROCEDURE [dbo].[GetMonsterActions]
    @MonsterId NVARCHAR(128)
AS

	SELECT m.[Name] 
		  ,ma.ActionName
		  ,ma.Attack
		  ,ma.ActionText
	FROM dbo.Monsters m 
		 INNER JOIN dbo.MonsterActions ma ON ma.MonsterID = m.MonsterID
	WHERE m.MonsterID = @MonsterId