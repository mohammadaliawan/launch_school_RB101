# Loops and Iterators in Ruby

## What is a loop?

A loop is a repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met.

## What are the different kinds of loops in ruby?

`loop {}` , `while`loops, `do while` loops and `for` loops.

## `loop` is a method in which class?

Kernel Class

## What does `Kernel#loop` method return?

returns what ever is provided to the break statement. If nothing then returns nil

## What is the sytax for `loop`?

```ruby
loop do
  #do this
  break if 
end
```

## How can a `loop` be stopped?

using Ctrl + C or using a break statement.

## What does the `break` keyword do in a loop?

`break` allows us to exit a loop at any point
any code after a break will not be executed.

## Does `break` exit a program?

No break does not exit a program, only exits the loop.
Execution will continue after the loop.

## What does the `next` keyword do in a loop?

`next`  is used to skip the rest of the current iteration
and start executing the next iteration.

## How does a while loop work?

A while loop is given a parameter that evaluates to a boolean.
As long as the parameter evaluates to true => the body of the while loop will execute. 

Once the boolean expression becomes false, 
=> the while loop is not executed again and 
=> the program continues after the while loop.

## `until` loop, how does it work?

until loop is the opposite of while loop.
It is given a parameter that evaluates to a boolean. 

If false, the body of the until loop will execute.
If true, the body will not execute.

## Do/While Loop, how does it work? What is the difference between this and while loop?

In Do/While loops, the code within the body of the loop is executed once, prior to the conditional check to see if the code should be executed.

The conditional check is placed at the end of the loop as opposed to the beginning.

## What is a classic use case for do/while loops?

When we want to repeatedly perform an action based on some condition, but we want the action to be executed at least one time no matter what.

## what is the syntax for `for` loop?

```ruby
for i in [1,2,3]
  #do this
end
```
## What are for loops used for?

`for` loops are used to loop over a collection of elements.

## Why do for loops have a definite end?

Becoz it is looping over a finite number of elements of a collection.

## What does a for loop return?

It returns the collection of elements.

## What are iterators?

Iterators are methods that naturally loop over a given set of data and allow you to operate on each element in the collection.

## How does Array#each method work?What does it do?what does it return?

Calls the given block once for each element in self, passing that element as a parameter. 

OR Loops through each element in the array once in order. Then it executes the code within the given block.

Each time we iterate over the array, we need to assign the value of the element to a variable. The variable is placed in pipes. 

Returns the array itself.

## Recursion. What is it?

Recursion is another way of creating a loop.

It is the act of calling a method from within itself.

## What is the key concept with recursion?

There is some baseline condition that returns a value, which then "undwinds" the recursive calls. 

Successive recursive calls build up, until some value is returned and only then can the recursive calls be evaluated.

## When dealing with nested loops, what is the best strategy to understand them?

Focus on one loop at a time.
Start with child loops first, then parent loops