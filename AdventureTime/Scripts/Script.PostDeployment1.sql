/*
Post-Deployment Script Template              
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.    
 Use SQLCMD syntax to include a file in the post-deployment script.      
 Example:      :r .\myfile.sql                
 Use SQLCMD syntax to reference a variable in the post-deployment script.    
 Example:      :setvar TableName MyTable              
               SELECT * FROM [$(TableName)]          
--------------------------------------------------------------------------------------
*/

SET IDENTITY_INSERT dbo.Size ON; 

INSERT dbo.Size ( 
   SizeId 
  ,Size
  ,SizeDescription 
  ,Height 
  ,Width
  ,Unit
  ,IsMetric
) 
SELECT SizeID 
      ,CASE WHEN Size = 'Tiny'
            THEN 'T'
            WHEN Size = 'Small' 
            THEN 'S'
            WHEN Size = 'Medium'
            THEN 'M'
            WHEN Size = 'Large' 
            THEN 'L'
            WHEN Size = 'Huge' 
            THEN 'H' 
            WHEN Size = 'Gargantuan' 
            THEN 'G'
            ELSE NULL 
        END 
       ,Size
       ,Height
       ,Width
       ,Unit
       ,IsMetric 
FROM OldAdventureTime.dbo.Sizes s
WHERE NOT EXISTS ( SELECT 1 
                   FROM dbo.Size a 
                   WHERE a.SizeId = s.SizeID ) 
     
SET IDENTITY_INSERT dbo.Size OFF; 
GO 

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
GO 

