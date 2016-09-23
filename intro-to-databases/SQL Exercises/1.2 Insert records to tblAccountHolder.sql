USE ExerciseDB;

INSERT INTO tblAccountHolder
(Name, Surname, Gender, DateOfBirth, AccountNumber, AccountType, AllowsOverdraft, MinimumDeposit, BranchCreated, DateCreated, Balance)
VALUES
('John', 'Smith', 'M', '2000-01-01', 111, 'Savings account', 0, 1000, 'Woking', '2016-09-16', 1500),
('Jayne', 'Doe', 'F', '1999-01-01', 222, 'Current account', 1, 100, 'London', '2016-09-16', 1000);

