-- take full backup
USE [master]
GO

BACKUP DATABASE s9message
TO DISK = 'C:\backup\s9message_19042024.bak'
GO
