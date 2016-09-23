USE ExerciseDB;
GO

CREATE VIEW
vwAccountOverview
AS

SELECT
AH.AccountHolderID,
AH.Name,
AH.Surname,
A.AccountNumber,
A.DateCreated 'Account created',
A.Balance,
[AT].AccountTypeID,
[AT].Name 'Account type',
[AT].AllowsOverdraft
FROM tblAccount A
JOIN tblAccountType [AT] ON A.AccountTypeID = [AT].AccountTypeID
JOIN tblAccountHolder AH ON AH.AccountHolderID = A.AccountHolderID