USE ExerciseDB;

UPDATE A
SET A.Balance = -10
FROM tblAccount A
JOIN tblAccountType [AT] ON A.AccountTypeID = [AT].AccountTypeID
WHERE [AT].AllowsOverdraft = 1;

-- Will result in an error due to existing account
DELETE FROM tblAccountHolder
WHERE Surname = 'Smith'

-- Will work fine as account is deleted first before deleting account holder
DELETE A
FROM tblAccount A
JOIN tblAccountHolder AH ON A.AccountHolderID = ah.AccountHolderID
WHERE Surname = 'Smith'

DELETE FROM tblAccountHolder
WHERE Surname = 'Smith'