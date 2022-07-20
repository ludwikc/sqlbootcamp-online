  
  
  SELECT [ID]
      ,[ColumnData]
  FROM [SQLBootcamp].[dbo].[Table_1]
 
  INSERT INTO [dbo].[Table_1]
  SELECT LEFT(NEWID(),8)
  GO 254
 
  DELETE FROM [dbo].[Table_1]
  WHERE [ID] < 11
 
  TRUNCATE TABLE [dbo].[Table_1]
 
 
  INSERT INTO [dbo].[Table_1]
		([ColumnData])
  VALUES((SELECT LEFT(NEWID(),8)))
 
  SET IDENTITY_INSERT [dbo].[Table_1] OFF
 
