USE ExerciseDB;

-- http://stackoverflow.com/questions/18149326/insert-random-data-content-in-sql-server-2008

;WITH SEQUENCE AS (
    SELECT N = ROW_NUMBER() OVER (ORDER BY @@spid)
    FROM sys.all_columns c1, sys.all_columns c2
)
INSERT INTO tblAccountHolder (AccountHolderID, Name, Surname, Gender, DateOfBirth)
SELECT
  NEWID(),
  CONVERT(Nvarchar(255), NEWID()),
  CONVERT(Nvarchar(255), NEWID()),
  'F',
  (DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 3650), '2000-01-01'))
FROM SEQUENCE WHERE N > 1000 AND N <= 11000;

;WITH SEQUENCE AS (
    SELECT N = ROW_NUMBER() OVER (ORDER BY @@spid)
    FROM sys.all_columns c1, sys.all_columns c2
)
INSERT INTO tblAccount(AccountID, AccountNumber, AccountTypeID, AccountHolderID, BranchCreated, DateCreated, Balance)
SELECT 
   NEWID(),
   N,
   (SELECT TOP 1 AccountTypeID FROM tblAccountType ORDER BY NEWID()),
   (SELECT TOP 1 AccountHolderID FROM tblAccountHolder ORDER BY NEWID()),
   'Woking',
   (DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 3650), '2000-01-01')),
   ABS(CHECKSUM(NewId())) % 4000000
FROM SEQUENCE WHERE N > 1000 AND N <= 1000000;