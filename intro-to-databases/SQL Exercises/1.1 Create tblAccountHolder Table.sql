USE ExerciseDB;

CREATE TABLE tblAccountHolder(
	Name nvarchar(250) NOT NULL,
	Surname nvarchar(250) NOT NULL,
	Gender nvarchar(1) NOT NULL,
	DateOfBirth date NOT NULL,
	AccountNumber INT NOT NULL,
	AccountType nvarchar(250) NOT NULL,
	AllowsOverdraft bit NOT NULL,
	MinimumDeposit decimal(18, 2) NOT NULL,
	BranchCreated nvarchar(250) NOT NULL,
	DateCreated date NOT NULL,
	Balance decimal(18, 2) NOT NULL
);