# Truthiness

The ability to express "true" and "false" helps us build conditional logic and understand the state of an object or expression.

## What are Boolean Datatypes

The notion of whether a value is true or false is captured in a boolean data type.

A boolean is an object whose only purpose is to convery whether it is true or false.

## How does an if-else statement work?

An if statment has two parts. A test expression and a then expression. If the test part evaluates to true then the then expression is evaluated. If it evaluates to false then the then part is not evaluated.
Instead the else expression is evaluated.

## Whatever expression you are evaluating in the test part of the if statement, it should evaluate to a boolean object i.e. true or false.

## When using method calls as a conditional expression, you will generally want the method to return a boolean object rather than relying on the truthiness or falsyness of non-boolean return value.