USE ExerciseDB;

ALTER TABLE tblAccountHolder WITH CHECK 
ADD CONSTRAINT CK_tblAccountHolder_Gender CHECK (([Gender]='M' OR [Gender]='F'))
GO

ALTER TABLE tblAccountHolder
ADD CONSTRAINT UQ_tblAccountHolder_AccountNumber UNIQUE(AccountNumber);
GO