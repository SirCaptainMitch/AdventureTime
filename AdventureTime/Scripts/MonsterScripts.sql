/* 
USE OldAdventureTime 
GO 

DROP TABLE IF EXISTS #Temp

SELECT m.MonsterID 
      ,M.[Name]
      ,s.[value] AS SpeedValue 
INTO #Temp
FROM Monsters m 
  CROSS APPLY STRING_SPLIT(m.Speed, ',') s  

SELECT * FROM #Temp 

-- Attempting to break apart the monster speed table into something normalized. 
-- Final Table like: 
/* 
  MonsterSpeedId 
  ,SpeedTypeId -- FK to new SpeedType table 
  ,SpeedValue -- INT (30) 
  ,SpeedUnit -- ft 
  ,SpeedExtra -- (hover, bear/wolf forms, etc) 
  ,SpeedText -- Text from the old table for easy output. 
*/ 

SELECT sub.Speed
      ,sub.SpeedValue 
      ,LTRIM(RTRIM(REPLACE(REPLACE(SpeedValue, 'ft.', ''), sub.Speed, ''))) AS SpeedType 
FROM (SELECT SUBSTRING(SpeedValue, PATINDEX('%[0-9]%',SpeedValue), PATINDEX('%[^0-9]%',SUBSTRING(SpeedValue, PATINDEX('%[0-9]%',SpeedValue), LEN(SpeedValue)))-1) Speed
            ,SpeedValue       
      FROM #Temp t 
      ) sub 

*/ 