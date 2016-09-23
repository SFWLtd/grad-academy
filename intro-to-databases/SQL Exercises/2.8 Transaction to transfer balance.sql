USE ExerciseDB;

SELECT AH.Name, AH.Surname, A.AccountNumber, A.Balance
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE
A.AccountNumber = 222
OR
A.AccountNumber = 333;

BEGIN TRAN

UPDATE A
SET A.Balance = A.Balance - 10
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE A.AccountNumber = 222;

UPDATE A
SET A.Balance = A.Balance + 10
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE A.AccountNumber = 333;

-- COMMIT
ROLLBACK


SELECT AH.Name, AH.Surname, A.AccountNumber, A.Balance
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE
A.AccountNumber = 222
OR
A.AccountNumber = 333;