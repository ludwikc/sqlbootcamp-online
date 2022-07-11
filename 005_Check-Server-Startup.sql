/* SQLBootcamp.online */

-- How to check SQL Startup Time

USE master
GO 


-- Check SQL startup Method 1
SELECT [name], [create_date] 
FROM sys.databases 
WHERE [name] = 'tempDB'


-- Check SQL startup Method 2
SELECT [login_time] 
FROM sys.sysprocesses 
WHERE [spid] = 1;


-- Check SQL startup Method 3
SELECT [sqlserver_start_time]
FROM sys.dm_os_sys_info
