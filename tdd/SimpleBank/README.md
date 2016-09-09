# Simple Bank

TDD Kata to introduce unit testing and how making small steps and refactoring five you
confidence in changing logic.

## Before you start

Try not to read ahead. Do one task at a time. The trick is to learn to work incrementally.
Make sure you test for valid and invalid inputs.

## Requirements

### Account

This class represents a bank account with a balance. Money can be debited or credited
from the account.

1. An account can be credited with a `decimal` amount which adds to the `Balance`.
1. The credit amount cannot be less than or equal to zero. If so it should `throw` an
`ArgumentOutOfRangeException`.
1. The exception should contain the name of the parameter.
1. An account can be debited with a `decimal` amount which deducts from the `Balance`.
1. The debit amount cannot be less than or equal to zero. If so it should `throw` an
`ArgumentOutOfRangeException`.
1. The exception should contain the name of the parameter.
1. The debit amount cannot be greater than the available balance. If so it should
`throw` a custom exception called `InsufficientFundsException`.
1. The exception message should say `"Debit amount '{amount}' exceeds the available 
balance '{balance}'."` (where {amount} and {balance} are replaced with the current 
values).

### Transaction

This class represents a bank transaction and is used to transfer money from one account
to another. A bank transaction is a debit from one account and a credit to another of a
specified amount.

1. Create a method to perform the bank transfer.
1. The amount to transfer should be a `decimal`.
1. The transfer amount cannot be less than or equal to zero. If so it should `throw` an 
`ArgumentOutOfRangeException`.
1. The exception should contain the name of the parameter.
1. The account objects cannot be null. If so it should `throw` an `ArgumentNullException`.
1. The exception should contain the name of the parameter.
1. The amount should be debited from one account and credited to the other.

### Interest Service

This class is used to apply interest to a bank account using the provided interest rate.

1. Create a method to apply the interest rate to an account.
1. The account object cannot be null. If so it should `throw` an `ArgumentNullException`.
1. The exception should contain the name of the parameter.
1. Determine the interest from the account balance and credit the account.