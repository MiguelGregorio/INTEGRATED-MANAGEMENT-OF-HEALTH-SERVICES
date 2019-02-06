USE master

IF ( EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'Projeto') )
Begin
  DROP DATABASE Projeto
end

IF (NOT EXISTS( SELECT * FROM [dbo].[sysdatabases] Where name = 'Projeto') )
Begin

  CREATE DATABASE Projeto
  ON 
   ( NAME = 'Projeto_dat',
      FILENAME = 'C:\BD1718\Projetodat.mdf',
--      FILENAME = N'e:\Microsoft SQL Server\MSSQL\data\PJdat.mdf',
      
      SIZE = 10,
      MAXSIZE = 200,
      FILEGROWTH = 5 )
   LOG ON
   ( NAME = 'Projeto_log',
     FILENAME = 'C:\BD1718\Projetolog.ldf',
--    FILENAME = N'e:\Microsoft SQL Server\MSSQL\data\PJlog.ldf',

     SIZE = 5MB,
     MAXSIZE = 100MB,
     FILEGROWTH = 5MB )
end