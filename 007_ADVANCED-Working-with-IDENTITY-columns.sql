  /* 
 * 
 * 🆂🆀🅻🅱🅾🅾🆃🅲🅰🅼🅿.🅾🅽🅻🅸🅽🅴
 * Sign up at: https://SQLBOOTCAMP.ONLINE 
 *
 * The following code snippets are complimentary
 * to the sqlbootcamp.online YouTube channel. 
 *
*/

-- Copy and paste following code to your IDE
-- 

  -- Create table 
  
  CREATE TABLE [dbo].[Table_1]
  	([ID] tinyint IDENTITY(1,1) NOT NULL,
         [ColumData] nchar(8) NOT NULL)
	 
  -- Select data to verify the table exists and that it's empty 
  
  SELECT [ID]
      ,[ColumnData]
  FROM [dbo].[Table_1]
 
  -- Insert first row 

  INSERT INTO [dbo].[Table_1]
  SELECT LEFT(NEWID(),8)


  -- Insert 254 rows in a loop
  
  INSERT INTO [dbo].[Table_1]
  SELECT LEFT(NEWID(),8)
  GO 254
  
  -- Insert additional, 256th row - this will fail

  INSERT INTO [dbo].[Table_1]
  SELECT LEFT(NEWID(),8)

  -- Delete rows from 1 to 10
  DELETE FROM [dbo].[Table_1]
  WHERE [ID] < 11
  
  -- Try inserting a row - this will fail

  INSERT INTO [dbo].[Table_1]
  SELECT LEFT(NEWID(),8) -- counter would still be 257

  -- Try inserting a row with explicid ID = 1,this will also fail  
  INSERT INTO [dbo].[Table_1]
		([ID], [ColumnData])
          VALUES( 1,   (SELECT LEFT(NEWID(),8)))


  SET IDENTITY_INSERT [dbo].[Table_1] OFF

 
  TRUNCATE TABLE [dbo].[Table_1]
 
 
  INSERT INTO [dbo].[Table_1]
		([ColumnData])
  VALUES((SELECT LEFT(NEWID(),8)))
 
  SET IDENTITY_INSERT [dbo].[Table_1] OFF
 
