# Truthiness

Ruby Considers everything to te truthy other than false and nil. 
Truthy means that it is considered true in an if conditional or with logical operators.

The ability to express "true" and "false" helps us build conditional logic and understand the state of an object or expression.

## What are Boolean Datatypes

The notion of whether a value is true or false is captured in a boolean data type.

A boolean is an object whose only purpose is to convery whether it is true or false.

## How does an if-else statement work?

An if statment has two parts. A test expression and a then expression. If the test part evaluates to true then the then expression is evaluated. If it evaluates to false then the then part is not evaluated.
Instead the else expression is evaluated.

## Whatever expression you are evaluating in the test part of the if statement, it should evaluate to a boolean object i.e. true or false.

## When using method calls as a conditional expression, you will generally want the method to return a boolean object rather than relying on the truthiness or falsyness of non-boolean return value.

## How do logical operators && and || work?

### The `&&` logical operator:

**Returns true only if both expressions being evaluated return true.**

#### If you chain multiple expressions with &&, 

then **if any expression is false, the entire chain will return false.**

All have to to be true for the entire chain to return true.

### The `||` operator:

**Returns true if either one of the evaluated expression returns true.**

Only way to return false is all or both expressions return false.

#### if you chain multiple expressions with ||,

then **if any expression is true, the entire chain will return true**

**Only way to return false is if all expressions are false**


# Short circuiting: the `&&` and `||` operators exhibit a behavior called short cicuiting: it will stop evaluating expression when it can guarantee the return value.

## The `&&` will short circuit when it encounters the first false value

`&&` This has to be true and this and this and this => then true
The AND operator requires all the expression to return true for it to return true. If even one is false, the entire chain returns false.

## The `||` will short circuit when it encouters the first true expression.

`||` This has to be true or this or this or this => then true

The OR operator will return true if even one expression is true.
It will only return false if all of the expressions are false.

THe && short circuits when it encouters the first false expression because it returns true only if both expressions are true. false otherwise

The || short circuits when it encounters the first true value because it returns true if either of the expressions returns true.

