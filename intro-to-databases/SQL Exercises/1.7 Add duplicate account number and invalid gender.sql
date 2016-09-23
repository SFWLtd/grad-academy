USE ExerciseDB;

UPDATE tblAccountHolder
SET Gender = 'A'
WHERE Surname = 'Doe';

INSERT INTO tblAccountHolder
(Name, Surname, Gender, DateOfBirth, AccountNumber, AccountType, AllowsOverdraft, MinimumDeposit, BranchCreated, DateCreated, Balance)
VALUES
('Mickey', 'Mouse', 'M', '1999-01-01', 222, 'Current account', 1, 100, 'London', '2016-09-16', 1000);