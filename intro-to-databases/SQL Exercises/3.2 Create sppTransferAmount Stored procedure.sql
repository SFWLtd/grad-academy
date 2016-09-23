USE ExerciseDB;
GO

CREATE PROCEDURE sppTransferAmount
@TransferorAccountNumber INT,
@TransfereeAccountNumber INT,
@Amount DECIMAL (18,2)

AS

BEGIN TRAN

UPDATE A
SET A.Balance = A.Balance - @Amount
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE A.AccountNumber = @TransferorAccountNumber;

UPDATE A
SET A.Balance = A.Balance + @Amount
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE A.AccountNumber = @TransfereeAccountNumber;

COMMIT

SELECT AH.Name, AH.Surname, A.AccountNumber, A.Balance
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = AH.AccountHolderID
WHERE
A.AccountNumber = @TransferorAccountNumber
OR
A.AccountNumber = @TransfereeAccountNumber;

GO