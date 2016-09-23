USE ExerciseDB;

-- Run queries while including the actual execution plan

SELECT AH.Name, AH.Surname, A.AccountNumber, A.DateCreated
FROM tblAccount A 
JOIN tblAccountHolder AH ON AH.AccountHolderID = A.AccountHolderID


SELECT TOP 1000 AH.Name, AH.Surname, A.AccountNumber, A.DateCreated
FROM tblAccount A 
JOIN tblAccountHolder AH ON AH.AccountHolderID = A.AccountHolderID
ORDER BY A.DateCreated;