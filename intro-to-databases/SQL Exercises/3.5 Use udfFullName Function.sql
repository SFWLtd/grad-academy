USE ExerciseDB;

SELECT
dbo.udfFullName (AH.Name, AH.Surname) 'FullName',
A.AccountNumber,
A.Balance
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE A.AccountNumber < 1000;

