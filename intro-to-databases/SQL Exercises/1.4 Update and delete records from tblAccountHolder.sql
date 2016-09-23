USE ExerciseDB;

UPDATE tblAccountHolder
SET Balance = 200;

UPDATE tblAccountHolder
SET Balance = -10
WHERE AllowsOverdraft = 1;

DELETE FROM tblAccountHolder
WHERE Surname = 'Smith'