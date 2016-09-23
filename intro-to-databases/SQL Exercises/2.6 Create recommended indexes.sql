USE ExerciseDB;

CREATE NONCLUSTERED INDEX IX_tblAccount_AccountTypeID ON tblAccount
(
	AccountTypeID ASC
);

CREATE NONCLUSTERED INDEX IX_tblAccount_AccountHolderID ON tblAccount
(
	AccountHolderID ASC
);

-- Now re-run first query from 2.5 including the actual execution plan