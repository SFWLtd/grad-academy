USE ExerciseDB;

SELECT *
FROM vwAccountOverview;

SELECT *
FROM vwAccountOverview
WHERE Balance > 1000;

SELECT AO.*, AT.MinimumDeposit
FROM vwAccountOverview AO
JOIN tblAccountType [AT] ON AO.AccountTypeID = AT.AccountTypeID