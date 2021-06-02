# Variables and Scope

## Variables act as pointers to a place or address space in memory.

## `b = a` assigning a variable to reference another variable basically means pointing the first variable to the same address space in memory as the second variable.

## If you call a method that mutates the caller, it will change the value in that address space and any variables also pointing there will be affected. 

## Reassignment including += does not mutate the caller / variable; instead it points/ binds the variable to a new object.

## numbers in ruby are immutable.

## Some operations mutate the address space in memory but pthers change the variable to point to a different address space in memory.



## When we are passing in arguments to a method, we are essentially assigning a variable to another variable


# Method Definitions Scoping Rules:

## A variable's scope determines where in a program a variable is available for use.

## A variable's scope is defined by where the variable is initialized. 

## In ruby variable scope is defined by a block.

## Inner scope can access variables initialized in an outer scope. But not vice versa.

## We can use the same variable inside method definitions as those outside the method definition, why? Because method definitions are self contained with respect to local variables.

## LVINVO, So the variables inside have no ability to be seen outside.

## LVONVI, So the top level variables are not available inside a method definition.

## Assignment never changes the value of an object; instead, it creates a new object, and then stores a reference to that object in the variable on the left.

## assignment to a variable (an object) never mutates the object that is referenced.

## Shadowing occurs when a block argument hides a local variable that is defined outside the block.