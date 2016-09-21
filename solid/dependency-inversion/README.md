# Dependency Inversion principle

* Decoupling of software modules
* Not necessarily the same as dependency injection
* High-level modules should not depend on low-level modules. Both should depend on abstractions
* You want to ensure that you can replace the implementation without violating the expectations of that interface
* Rather than working with a set of classes that are tightly coupled to each other, you want to work with a standard interface
* Code should only work with the interface and not assume any knowledge about the concrete implementation of the interface

The **dependency-inversion-before** uses the example of the code used in single-responsibility-after, i.e. the adding a permit class. You can see that the Permits class instantiates the Message sender class when a new Permits is created. This means that to change the contract/implementation of the Message sender we would also need to change the Permits class. 

### To run the project
1. Open the App.Config file and change the "address" application setting
2. Right click on the *dependency-inversion-before* project and choose "Set as Startup Project" 
3. Press F5, a console window will display the status, you should receive a very simple email to the address added in the application settings

### Workshop Task
1. Using dependency inversion principles modify the project so that the MessageSender class implementation is injected into the Permits class.
2. Use the dependency-inversion-after project if you get stuck :)  

## dependency-inversion-after
Creates a new interface IMessageSender which the MessageSender class now implements. The Permits class has a private field IMessageSender that is injected in the constructor rather than instantiating a concreate implementation. The main program instantiates the MessageSender class and injects into the Permits class. 

This principle is used in modern MVC web applications and is generally called *Dependency Injection*.
