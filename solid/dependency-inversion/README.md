# Dependency Inversion principle

* Decoupling of software modules
* Not necessarily the same as dependency injection
* High-level modules should not depend on low-level modules. Both should depend on abstractions
* You want to ensure that you can replace the implementation without violating the expectations of that interface
* Rather than working with a set of classes that are tightly coupled to each other, you want to work with a standard interface
* Code should only work with the interface and not assume any knowledge about the concreate implementation of the interface

The **dependency-inversion-before** project is an example of a project  the example of the code of the single-responsibility-after code, i.e. the adding a permit class. You can see that the Permits class instantiates the Message sender class when a new Permits is created. This means that to change the contract/implementation of the Message sender we would also need to change the Permits class. 


CHANGE TO THE APP.CONFIG