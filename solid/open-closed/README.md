# Open Closed principle

Software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification.
* Regression should be small factor, changing a single class should not require regression of an entire system
* Entity doesn't have to be changed each time a requirement changes


## open-closed-before
This project provides a simple example of a Permit cost calculator, it takes a number of permits calculates the cost and outputs the total cost to the screen. There are two permit types, one that's cost is calculated by Quantity * Factor and one by Quantity + Factor.

Looking at the code for the PermitCostCalculator. If in the future there is a requirement of a new permit type that calculates its cost by Quantity – Factor, we will have to add an additional IF statement, this means we are having to modify the PermitCostCalculator class each time a new permit type requires implementing. This is not ideal.

To run the project

1. Right click on the *open-closed-before* project and choose "Set as Startup Project" 
2. Press F5, a console window will display the status and the total cost of the permits

### Workshop Task
1. Attempt to implement PermitTypeThree which calculates the cost of the permit by Quantity – Factor without adding a new IF statement to the PermitCostCalculator class.
2. Use the open-closed-after project if you get stuck :)  

## open-closed-after
We can solve this issue by creating an abstract Permit base class and updating the PermitCostCalculator to use the Open Closed principle. 
We can now add any number of Permit types without changing the way the total cost of the permits is calculated, the new permit type just needs to inherit from Permit and implement the Cost method.
