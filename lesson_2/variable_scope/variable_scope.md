# Variable Scope

## What does the variable's scope determine?

A variable's scope determines where in a program a variable is available for use.

## How is a variable's scope defined in a program?

A variable's scope is defined by where the variable is initialized or created.

where a variable is initialized determines its scope

## How is a variable's scope defined in Ruby?

In Ruby a variable's scope is defined by a block.

## What is a block in Ruby?

A block is a piece of code following a method invocation, usually delimited by either curly braces `{}` or `do/end`

## What does inner and outer scope mean?

Code inside a block is in an inner scope and code outside that block is in an outer scope with respect to that block.

the scope created by a block following a method invocation is an inner scope

## Scope Rule for local variables

Inner scope can access variables initialized in an outer scope.
But Outer scope cannot access variables initialized in an inner scope.

Variables initialized in an outer scope can be accessed in an inner scope, but not vice versa

## How do we know if some code delimited by do..end or {} is a block?

The key distinguishing factor for deciding whether code delimited by {} or do/end is considered a block (and thereby creates a new scope for variables), is seeing if the {} or do/end immediately follows a method invocation.

 ```ruby
 for i in arr do
  a = 3
 end

 puts a
 ```

 In the above code `a` is accessible outside the for..do/end because this do..end did not create a new inner scope.

 for..do/end is part of the Ruby Language and not a method invocation.

## In what two areas are the local variable scoping rules encountered?

method definition and method invocation with a block.

## What is the relation of a block to a method invocation?

The block following the method invocation is actually an argument being passed into the method

## What is an important aspect of a block related to variable scope?

They create a new scope for local variables.

## How can we effect a local variable initialized in an outer scope inside a do..end block following a method invocation?

A do..end block following a method invocation creates an inner scope for local variables. An outer scope variable can be both accessed and reassigned in an inner scope.

This means that when we instantiate variables in an inner scope, we have to be very careful that we're not accidentally re-assigning an existing variable in an outer scope.

## How do local variables initialized in peer method invocations behave? What does this behavior entail?

Peer blocks cannot reference variables initialized in other blocks. This means that we could use the same variable names in peer blocks. However, they are not the same variables.

## How do nested block behave with respect to local variable scope?

Nested blocks follow the same rules of inner and outer scoped variables. However, when dealing with nested blocks, our usage of what's "outer" or "inner" is going to be relative.

## What is variable shadowing? How can it be prevented?

When a block parameter has the same name as a outer scoped local variable, it prevents access to the outer scope variable inside the block. IT 'shadows' the outer scoped variable. And we are only able to access the block parameter's value.

Variable shadowing also prevents us from making changes to the outer scoped variables.

To prevent variable shadowing, block parameters should be given a name different from outer scoped variables,


## What are the scoping rules with regards to method definitions?

Method definitions are self contained with respect to local variables. Methods can only access variables that were initialized inside the method or that are defined as parameters.

## What is inner and outer scope for method definitions?

A method definition has no notion of "outer" or "inner" scope -- you must explicitly pass in any parameters to a method definition.

## What if a local variable and a method were to share the same name?

Ruby will first search for the local variable, and if it is not found, then Ruby tries to find a method with the given name.

If neither local variable nor method is found, then a NameError message will be thrown.

## What are the scoping rules inside a method definition?

The rules of scope for a method invocation with a block remain in full effect even if we're working inside a method definition.

# More Variable Scope

## How does a block relate to a method invocation?

A block is very closely tied to the method invocation. A block is part of the method invocation.

The block following the method invocation is actually an argument being passed into the method.

the block acts as an argument to the method

## any method can be called with a block, but the block is only executed if the method is defined in a particular way.

## The way that an argument is used, whether it is a method parameter or a block, depends on how the method is defined.

## blocks and methods can interact with each other; the level of that interaction is set by the method definition and then used at method invocation.

## When invoking a method with a block, we aren't just limited to executing code within the block; depending on the method definition, the method can use the return value of the block to perform some other action.

For example The Array#map method is defined in such a way that it uses the return value of the block to perform transformation on each element in an array

Method definitions cannot directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within it

A block can access local variables initialized outside of the block and can reassign those variables. We already know that methods can access local variables passed in as arguments, and now we have seen that

## methods can access local variables through interaction with blocks.

we can think of method definition as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block.

We can then think of method invocation as using the scope set by the method definition. If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.

## Summary

- The def..end construction in Ruby is method definition

- Referencing a method name, either of an existing method or subsequent to definition, is method invocation

- Method invocation followed by {..} or do..end defines a block; the block is part of the method invocation

- Method definition sets a scope for local variables in terms of parameters and interaction with blocks

- Method invocation uses the scope set by the method definition

