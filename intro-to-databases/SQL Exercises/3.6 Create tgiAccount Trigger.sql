USE ExerciseDB;
GO

CREATE TRIGGER tgiAccount
ON tblAccount
INSTEAD OF INSERT
AS

DECLARE 
@AccountTypeID UNIQUEIDENTIFIER,
@Balance DECIMAL(18,2),
@MinimumDeposit DECIMAL (18,2);

SELECT 
  @AccountTypeID = I.AccountTypeID,
  @Balance = I.Balance
FROM INSERTED I

SELECT 
@MinimumDeposit = [AT].MinimumDeposit
FROM tblAccountType [AT]
WHERE [AT].AccountTypeID = @AccountTypeID;

IF @Balance < @MinimumDeposit
  BEGIN
    RAISERROR('Balance cannot be less than minimum required deposit for account type', 16, 1);
  END
ELSE
  BEGIN
    INSERT INTO tblAccount
	SELECT * FROM INSERTED;
  END
GO