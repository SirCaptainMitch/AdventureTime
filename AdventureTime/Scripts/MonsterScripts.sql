/* 
USE OldAdventureTime 
GO 


DROP TABLE IF EXISTS dbo.MonsterMovement
DROP TABLE IF EXISTS #Temp
DROP TABLE IF EXISTS #FirstPass 

SELECT m.MonsterID 
      ,M.[Name]
      ,s.[value] AS SpeedValue 
INTO #Temp
FROM Monsters m 
  CROSS APPLY STRING_SPLIT(m.Speed, ',') s  
--WHERE m.MonsterID IN ( 438
--                      ,441
--                      ,494
--                      ,440 ) 

--SELECT * FROM #Temp 


DROP TABLE IF EXISTS dbo.MovementType

CREATE TABLE dbo.MovementType ( 
   MovementTypeId INT IDENTITY(1,1) 
    CONSTRAINT PK_MovementTypeId PRIMARY KEY CLUSTERED (MovementTypeId) 
  ,Movement VARCHAR(50)       
) 
INSERT MovementType ( 
  Movement 
) 
SELECT Movement 
FROM ( VALUES ('Base') 
              ,('Fly')
              ,('Climb')
              ,('Burrow') 
              ,('Swim')
              ,('Rolling') 
     ) AS SpeedType (movement)

--SELECT * FROM dbo.MovementType 

CREATE TABLE dbo.MonsterMovement ( 
   MonsterMovementId INT IDENTITY(1,1) 
    CONSTRAINT PK_MonsterMovementId PRIMARY KEY CLUSTERED ( MonsterMovementId )
  ,MonsterId INT NOT NULL 
    CONSTRAINT FK_MonsterMovement_MonsterId FOREIGN KEY (MonsterId) REFERENCES dbo.Monsters (MonsterId) 
  ,MovementTypeId INT NOT NULL 
    CONSTRAINT FK_MonsterMovement_MovementTypeId FOREIGN KEY (MovementTypeId) REFERENCES dbo.MovementType (MovementTypeId)
  ,Speed INT NOT NULL 
  ,SpeedUnit VARCHAR(5) NOT NULL DEFAULT ('ft') 
  ,IsHover BIT 
  ,MovementText VARCHAR(100) 
) 


SELECT MonsterID
      ,mt.MovementTypeId
      ,SpeedType 
      ,s.Speed
      ,s.IsHover 
      ,s.SpeedValue
INTO #FirstPass 
FROM ( SELECT MonsterId
              ,sub.Speed
              ,CASE WHEN LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(ISNULL(NULLIF(REPLACE(REPLACE(SpeedValue, 'ft.', ''), sub.Speed, ''),''), 'Base' ),'(', ''), ')', ''), 'hover', ''), 'it can .',''),'ft', ''))) = ''
                    THEN 'base' 
                    ELSE LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(ISNULL(NULLIF(REPLACE(REPLACE(SpeedValue, 'ft.', ''), sub.Speed, ''),''), 'Base' ),'(', ''), ')', ''), 'hover', ''), 'it can .',''),'ft', '')))
               END AS SpeedType 
              ,sub.SpeedValue 
              ,CASE WHEN sub.SpeedValue LIKE '%hover%'
                    THEN 1 
                    ELSE 0 
               END AS IsHover 
        FROM (SELECT SUBSTRING(SpeedValue, PATINDEX('%[0-9]%',SpeedValue), PATINDEX('%[^0-9]%',SUBSTRING(SpeedValue, PATINDEX('%[0-9]%',SpeedValue), LEN(SpeedValue)))-1) Speed
                    ,SpeedValue       
                    ,MonsterID
              FROM #Temp t 
              ) sub 
       ) s
  LEFT JOIN dbo.MovementType mt ON mt.Movement = s.SpeedType

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'in bear or hybrid form', '')
FROM #FirstPass m
WHERE m.MonsterID = 437 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'Downhill', '')
FROM #FirstPass m
WHERE m.MonsterID = 176 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'in raven and hybrid forms', '')
FROM #FirstPass m
WHERE m.MonsterID = 579 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, ' in boar form', '')
FROM #FirstPass m
WHERE m.MonsterID = 438 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'in tiger form', '')
FROM #FirstPass m
WHERE m.MonsterID = 441 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'in wolf form', '')
FROM #FirstPass m
WHERE m.MonsterID = 494 

UPDATE #FirstPass 
SET SpeedType = REPLACE(SpeedType, 'with boots of speed', '')
FROM #FirstPass m
WHERE m.MonsterID = 440 

UPDATE m 
SET MovementTypeId = mt.MovementTypeId
FROM #FirstPass m 
  JOIN dbo.MovementType mt ON mt.Movement = m.SpeedType 
WHERE m.MonsterID IN ( 437, 176, 579, 438, 441, 494, 440 ) 

INSERT dbo.MonsterMovement ( 
  MonsterId
  ,MovementTypeId
  ,Speed
  ,SpeedUnit
  ,IsHover
  ,MovementText
)   
SELECT MonsterID
      ,mt.MovementTypeId
      ,s.Speed
      ,'ft'
      ,s.IsHover 
      ,LTRIM(RTRIM(s.SpeedValue))
FROM #FirstPass s
  JOIN dbo.MovementType mt ON mt.Movement = s.SpeedType 
--WHERE s.MovementTypeId IS NULL 

SELECT * 
FROM dbo.MonsterMovement

*/ 