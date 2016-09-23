# Introduction to databases

## Exercises

### Requirements

* SQL Server
* SQL Server Management Studio

### Exercise 1

1. Create database
2. Create account holder table (with built in account type and account details) with the following columns:
   * Name
   * Surname
   * Gender
   * Date of birth
   * Account number
   * Account type
   * Allows Overdraft
   * Minimum deposit
   * Balance
   * Branch created
   * Date created
3. Select appropriate data type for fields
4. Insert, select and update data
5. Try inserting / updating with invalid value for a data type
6. Add constraint to values for Gender and account number

### Exercise 2

1. Remove the following columns from the account holder table:
   * Account number
   * Account type
   * Allows Overdraft
   * Minimum deposit
   * Balance
   * Branch created
   * Date created
2. Create an Account holder ID column for the account holder table and make it the primary key
3. Create an account type table with the following columns:
   * Account type ID (primary key)
   * Account type
   * Allows overdraft
   * Minimum deposit
4. Create an account table with the following columns:
   * Account ID (primary key)
   * Account number
   * Balance
   * Branch created (should be defined in another table to contain list of branches)
   * Date created
   * Account type ID (foreign key pointing to the ID of the account type table)
   * Account holder ID (foreign key pointing to the ID of the account holder table)
5. Insert data into the tables and perform joins to retrieve them
6. Create indexes on
   * Foreign key columns
   * DateCreated column of the account table since we use a query which sorts on that column
   * Show the differences between execution plans with the presence and absence of indexes 
7. Discuss about the limitation of the current design
   * Only allows one account holder per account
   * How can this be changed?
8. Transactions
   * Transfer amount between two accounts
   * Both balances must be updated before commit

### Exercise 3

1. Create a view to retrieve information as in exercise 2
2. Create a stored procedure to transfer amount as in exercise 2
3. Create a function to merge first name and surname
4. Create a trigger to enforce that an account balance must be greater or equal to the minimum deposit on insertion