 /*******************************************
 *
 *  ========= SQLBootcamp.online ============
 *
 *  000_BasicSetup.sql - Initial Script
 *  Source: https://github.com/ludwikc/sqlbootcamp-online/
 *
 *******************************************/
  
  
 -- Check if the SQLBootcampDB exits, and if not - create one.
 
 IF NOT EXISTS
    (SELECT * FROM sys.databases WHERE name = 'SQLBootcampDB')
   BEGIN
    CREATE DATABASE [SQLBootcampDB]
   END
 GO
 
 -- Switch the context to SQLBootcampDB
 USE [SQLBootcampDB]
 GO
