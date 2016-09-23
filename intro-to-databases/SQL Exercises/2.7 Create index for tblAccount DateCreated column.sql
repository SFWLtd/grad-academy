USE ExerciseDB;

CREATE NONCLUSTERED INDEX IX_tblAcount_DateCreated ON tblAccount
(
	DateCreated ASC
);

-- Now re-run second query from 2.5 including the actual execution plan