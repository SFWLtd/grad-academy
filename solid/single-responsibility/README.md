# Single Responsibility principle

A class should only have a single responsibility; it should only have one reason to change.
* Robost, changes to a single class or method do not require changes and testing to knock on code
* Regression should be small factor, changing a single class should not require regression of an entire system
* Fits nicely with TDD

## single-responsibility-before
In this project the Permits class is responsible for adding a permit to the list of permits and then creating and sending an SMTP email using a defined exchange server. 
In this example the only reason that the Permits class should change is if the method of adding a permit to the data source requires changing, it should not need changing if the email exchange server or method of email sending needs updating. This breaks the single responsibility principle.

To run the project
1. Open the App.Config file and change the "address" application setting
2. Right click on the *single-responsibility-before* project and choose "Set as Startup Project" 
3. Press F5, a console window will display the status, you should recieve a very simple email to the address added in the application settings

### Workshop Task
1. Modify the project so that modifying the message sending capability is completely independant from the task of adding a permit to the data source
2. Use the single-responsible-after project if you get stuck :) 