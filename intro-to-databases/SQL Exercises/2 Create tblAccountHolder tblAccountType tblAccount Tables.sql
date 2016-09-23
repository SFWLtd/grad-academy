USE ExerciseDB;

CREATE TABLE tblAccountHolder(
    AccountHolderID uniqueidentifier NOT NULL,
	Name nvarchar(250) NOT NULL,
	Surname nvarchar(250) NOT NULL,
	Gender nvarchar(1) NOT NULL,
	DateOfBirth date NOT NULL
	CONSTRAINT PK_tblAccountHolder_AccountHolderID PRIMARY KEY CLUSTERED (AccountHolderID ASC)
);

ALTER TABLE tblAccountHolder WITH CHECK 
ADD CONSTRAINT CK_tblAccountHolder_Gender CHECK (([Gender]='M' OR [Gender]='F'))
GO

CREATE TABLE tblAccountType(
    AccountTypeID uniqueidentifier NOT NULL,
	Name nvarchar(250) NOT NULL,
	AllowsOverdraft bit NOT NULL,
	MinimumDeposit decimal(18, 2) NOT NULL
	CONSTRAINT PK_tblAccountType_AccountTypeID PRIMARY KEY CLUSTERED (AccountTypeID ASC)
);

CREATE TABLE tblAccount(
    AccountID uniqueidentifier NOT NULL,
	AccountNumber INT NOT NULL,
	AccountTypeID uniqueidentifier NOT NULL,
	AccountHolderID uniqueidentifier NOT NULL,
	BranchCreated nvarchar(250) NOT NULL,
	DateCreated date NOT NULL,
	Balance decimal(18, 2) NOT NULL
	CONSTRAINT PK_tblAccount_AccountID PRIMARY KEY CLUSTERED (AccountID ASC)
);

ALTER TABLE tblAccount WITH CHECK 
ADD CONSTRAINT FK_tblAccount_tblAccountHolder
FOREIGN KEY(AccountHolderID) REFERENCES tblAccountHolder (AccountHolderID);

ALTER TABLE tblAccount WITH CHECK 
ADD CONSTRAINT FK_tblAccount_tblAccountType 
FOREIGN KEY(AccountTypeID) REFERENCES tblAccountType (AccountTypeID);

ALTER TABLE tblAccount
ADD CONSTRAINT UQ_tblAccount_AccountNumber UNIQUE(AccountNumber);

GO