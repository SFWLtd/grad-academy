USE ExerciseDB;

SELECT *
FROM tblAccountHolder;

SELECT *
FROM tblAccountHolder
WHERE Surname = 'Smith';

SELECT Name, Surname, Balance
FROM tblAccountHolder
WHERE Balance > = 500;