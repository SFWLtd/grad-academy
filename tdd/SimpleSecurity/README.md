# Simple Security

TDD Kata for showing the difference between mocks and fakes. It also highlights some of 
the intricacies of working with third party libraries.

## Before you start

Try not to read ahead. Do one task at a time. The trick is to learn to work incrementally.
Make sure you only test for correct inputs. there is no need to test for invalid inputs 
for this kata.

## Requirements

1. The `AuthenticationService` should use the injected `ILoginProvider` to authenticate
the given user credentials.
1. The `AuthenticateUser` method on the `ILoginProvider` interface returns -1 if the user is not found; 0 if the credentials are 
incorrect; otherwise a positive `int` which is the user id.
1. The `Login` method should return `true` if the login was successful; otherwise 
`false`.
1. The `Login` method should use the injected `ILogWriter` to log information about
failed logins.
1. If the user is not found it should log the message `"Username '{username}' not found"` 
(where {username} is replaced with the user that tried to log in).
1. If the user credentials are incorrect it should log the message `"Invalid credentials
provided for {username}"` (again substituting {username}).