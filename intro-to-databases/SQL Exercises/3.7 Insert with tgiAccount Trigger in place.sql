USE ExerciseDB;

INSERT INTO tblAccount (AccountID, AccountNumber, AccountTypeID, AccountHolderID, BranchCreated, DateCreated, Balance)
VALUES
('053CAE4E-AD92-4260-A9FE-93E828C97F5B', 444, '70BC1125-72B0-48B3-9715-A6AEB128911B', '7975D1DA-603E-4ADE-8BB2-673032B78B56', 'Woking', '2016-09-16', 1500);

-- Fails due to tgiAccount trigger
INSERT INTO tblAccount (AccountID, AccountNumber, AccountTypeID, AccountHolderID, BranchCreated, DateCreated, Balance)
VALUES
('655849F3-B78E-46B7-B155-ECB217C2A392', 555, '70BC1125-72B0-48B3-9715-A6AEB128911B', '7975D1DA-603E-4ADE-8BB2-673032B78B56', 'Woking', '2016-09-16', 10);

SELECT *
FROM tblAccount 
WHERE AccountID = '655849F3-B78E-46B7-B155-ECB217C2A392';