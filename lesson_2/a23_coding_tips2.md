# Coding Tips

## Using new lines to organize code

Making your code readable is of paramount importance, not only for others but for your future self.

Use some new lines to seperate the different concerns in the code.
For Example, 
1. Variable Initialization
2. User input and validation
3. Using the Variable

Can be three different sections to your code seperated by new lines.

## Should a method return or display?

> Understand if a method returns a meaningful value, has side effects or both.

Side effects: either displaying something to the output or mutating an object.

Pay attention to the methods and their side effects vs. return value. It is critical in helping to write code that's well organized and easy to read.

In general, if a method has both side effects and a meaningful return value its a red flag. Try to avoid writing methods that do this. It will be difficult to use these methods in the future.

## Naming Methods appropriately

Give your methods good names that reflect what they do instead of how they are implemented. 

Giving your methods good names also helps you remember what each method does without looking at their implementation.

For example, preface `display_` or `print_` to methods that output values.

> If you find yourself constantly looking at a method's implementation every time you use it, its a sign that the method needs to be improved.

## A method should do one thing, and be named appropriately.

If you can treat a method as a black box then its a well designed method.

## Don't mutate the caller during iteration. Or you will get unexpected results.

You can mutate the individual elements within that collection, just not the collection itself.

## Variable Shadowing

Variable shadowing occurs when you choose a local variable in an inner scope that shares the same name as an outer scope. It prevents you from accessing the outer scope variable from an inner scope.

## Don't use assignment in a conditional

## Use underscore for unused parameters in blocks