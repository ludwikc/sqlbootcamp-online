/****** SQLBootcamp.online   ******/

USE [master]
GO

/****** Object:  Database [SQLBootcamp]   
*
*
*    REPLACE THE ---VERSION--- IN FILENAME LOCATION
*
*
******/


CREATE DATABASE [SQLBootcamp2] ON  PRIMARY 
( NAME = N'SQLBootcamp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL---VERSION---.MSSQLSERVER\MSSQL\DATA\SQLBootcamp.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SQLBootcamp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL---VERSION---.MSSQLSERVER\MSSQL\DATA\SQLBootcamp_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO


USE [SQLBootcamp]
GO

-- CREATING TABLES

CREATE TABLE [dbo].[Table1](
	[Date] [smalldatetime] NOT NULL,
	[MoneyIn] [smallint] NOT NULL
) 
GO


CREATE TABLE [dbo].[Table2](
	[Date] [smalldatetime] NOT NULL,
	[MoneyOut] [smallint] NOT NULL
) 
GO


-- INSERTING DATA
INSERT INTO Table1
VALUES ('1/1/2022','50'),
	   ('1/2/2022','70');
GO
INSERT INTO Table2
VALUES ('1/2/2022','30');
GO



-- CHECKING DATA


SELECT [Date]
      ,[MoneyIn]
FROM [SQLBootcamp].[dbo].[Table1]

  
SELECT [Date]
      ,[MoneyOut]
FROM [SQLBootcamp].[dbo].[Table2]

--
-- User tried: 
Select t1.date, t1.money, t2.MoneyOut
From table1 t1 left join table2 t2 on t1.date = t2.date


--PROPER JOIN FROM ABOVE
SELECT * 
FROM Table1 AS T1
INNER JOIN Table2 AS T2
ON [T1].[Date] = [T2].[Date]

-- INSERTING TEST DATA

INSERT INTO Table2
VALUES ('1/3/2022','10')

--FULL JOIN

SELECT * 
FROM Table1 AS T1
FULL OUTER JOIN Table2 AS T2
ON [T1].[Date] = [T2].[Date]

--DESIRED SOLUTION
SELECT [T1].[Date],[MoneyIn],[MoneyOut] 
FROM Table1 AS T1
FULL OUTER JOIN Table2 AS T2
ON [T1].[Date] = [T2].[Date]

