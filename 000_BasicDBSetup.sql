 /*******************************************
 *
 *  ========= SQLBootcamp.online ============
 *
 *  000_BasicSetup.sql - Initial Script
 *  Source: https://github.com/ludwikc/sqlbootcamp-online/
 *
 *******************************************/
  
  
 -- Check if the SQLBootcampDB exits, and if not - create one.
 USE [master]
 
 IF NOT EXISTS
    (SELECT * FROM sys.databases WHERE name = 'SQLBootcampDB')
   BEGIN
    CREATE DATABASE [SQLBootcampDB]
   END
 GO
 
 -- Set Recovery Model to SIMPLE, regardless of Model DB settings
 USE [master]
 ALTER DATABASE [SQLBootcampDB] SET RECOVERY SIMPLE WITH NO_WAIT
 
 -- Switch the context to SQLBootcampDB
 USE [SQLBootcampDB]
 GO
