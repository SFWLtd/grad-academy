USE [ExerciseDB];
GO

DECLARE @sql NVARCHAR(max) = '';

SELECT @sql += ' ALTER TABLE [' + o.name + '] DROP CONSTRAINT ' + i.name + ';'
from sys.foreign_keys i
INNER JOIN sys.objects o ON i.parent_object_id = o.object_id

Exec Sp_executesql @sql;

GO

DECLARE @sql NVARCHAR(max) = '';

SELECT @sql += ' DROP TABLE [' + TABLE_SCHEMA + '].['+ TABLE_NAME + ']'
FROM   INFORMATION_SCHEMA.TABLES
WHERE  TABLE_TYPE = 'BASE TABLE';

Exec Sp_executesql @sql;

GO


DECLARE @sql NVARCHAR(max) = '';

SELECT @sql += ' DROP VIEW [' + TABLE_SCHEMA + '].['+ TABLE_NAME + ']'
FROM INFORMATION_SCHEMA.VIEWS;

Exec Sp_executesql @sql;

GO

DECLARE @sql NVARCHAR(max) = '';

SELECT @sql += ' DROP ' + ROUTINE_TYPE + ' [' + SPECIFIC_SCHEMA + '].['+ SPECIFIC_NAME + ']'
FROM INFORMATION_SCHEMA.ROUTINES;

Exec Sp_executesql @sql;

GO