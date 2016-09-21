# Interface Segregation principle
Intended to keep a system decoupled and thus easier to refactor, change, and redeploy.
* Clients should not have to implement methods that it does not use
* Break large interfaces into smaller interfaces 

## interface-segregation-before
You can see from the FreePermit class, as it implements the IPermit interface that it has to implement the Cost method, although the permit is free. This is pollution of interfaces.

### Workshop Task
1. Attempt to modify the project to break the interface apart so that the FreePermit does not have to implement the Cost method.
2. Use the interface-segregation-after project if you get stuck :)  

## interface-segregation-after
You can see that by splitting the original IPermit interface into a IPermit and ICostPermit. Permit can implement IPermit and ICostPermit and FreePermit just needs to implement IPermit and not provide an implementation for the Cost method.
