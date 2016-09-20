# Dependency Inversion principle

* Decoupling of software modules
Not necessarily the same as dependency injection.
High-level modules should not depend on low-level modules. Both should depend on abstractions.
Abstractions should not depend upon details. Details should depend upon abstractions.
You want to ensure that you can replace the implementation without violating the expectations of that interface, according to LSP
The same principle also applies in software development. Rather than working with a set of classes that are hard wired (tightly coupled) to each other, you want to work with a standard interface.
Code should only work with the interface and not assume any knowledge about the concreate implementation of the interface.
