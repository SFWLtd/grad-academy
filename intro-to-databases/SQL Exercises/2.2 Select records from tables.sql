USE ExerciseDB;

SELECT *
FROM tblAccountHolder;

SELECT *
FROM tblAccountHolder
WHERE Surname = 'Smith';

SELECT Name, Surname, Balance
FROM tblAccountHolder AH
JOIN tblAccount A ON AH.AccountHolderID = A.AccountHolderID
WHERE Balance > = 500;