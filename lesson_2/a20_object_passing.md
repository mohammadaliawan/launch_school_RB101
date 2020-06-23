# Pass by reference vs. Pass by value

## Meaning of the terms and Ruby's behaviour

What happens to objects when passed into methods.

In most programming languages there are two ways of dealing with objects passed into methods.

You can either treat these arguments as references to the original object or as values which are copies of the original.

## Pass by value

When you pass by value, the method only has a copy of the original object. Operations performed on the object within the method have no effect on the original object outside of the method.

## Pass by reference

Operations within the method affect the original object.

## What Ruby does

Ruby exhibits a combination of the behaviours from both "pass-by-reference" as well as "pass-by-value"

**Remember: When an operation within the method mutates the caller, it will affect the original object**
