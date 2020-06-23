# Variable Scope

## What is variable Scope?

Variable Scope determines where in a program a variable is available for use.

## What determines a variable's scope?

It is determined by where the variable has been initalized or created.

## How is variable scope defined in Ruby?

In ruby variable scope is defined by a block.

## What is a block?

A block is a piece of code following a method invocation delimited by either {} or do/end.

## Rule no.1 for variable scope for method invocation blocks

Inner Scope can access variables inialized in an outerscope.

Outer scope cannot access variables initalized in an inner scope.

A method invocation block creates an inner scope. The main is the outer scope.

**Remember that the block following a method invocation is actually an argument being passed into the method.**

## Ruby method invocation block: creates a new scope for local variables.

The scope created by a method invocation block is known as an inner scope.

Nested Blocks will create nested scopes.

**Inner scope can access outer scope variables.**

**You can change variables from an inner scope and have that change affect the outer scope**

This means that when we instantiate variables in an inner scope, we have to be very careful that we're not accidentally re-assigning an existing variable in an outer scope.

## Peer blocks

Peer Blocks create new seperate inner scope for variables and cannot reference variables initialized in other blocks.

## Nested Blocks

Nested blocks follow the same rules of inner and outer scoped variables. 

## Variable Shadowing

When a block parameter has the same name as an outer scope variable, it prevents acces to the outer scope local variable.

Variable shadowing also prevents us from making changes to the outer scoped

## Method Definitions:

While a block has a scope that leaks, a method definition's scope is entirely self-contained.

The only variables a method definition has access to must be passed into the method definition. 

A method definition has no notion of "outer" or "inner" scope -- you must explicitly pass in any parameters to a method definition.

Local Variables that are not initialized inside a method definition must be defined as parameters.

## Blocks within method definitions

The rules of scope for a method invocation with a block remain in full effect even if we are working inside a method definition.

## Constants

In procedural style programming constants behave like globals.

### Method definitions and Constants

They are available inside method definitions without explicitly passing them into the method as am argument

```ruby
USERNAME = 'Batman'

def authenticate
  puts "Logging in #{USERNAME}"
end

authenticate    # => Logging in Batman
```

### Method Invocation Blocks and Constants

Constants cross the block boundary as well.

Constants initialized in an inner scope are available in the outer scope.
Constants initialized in an outer scope are available in the inner scope just like local variables.

## More Variable Scope

Technically any method can be called with a block, but the block is only executed if the method is defined in a particular way.

**A block is part of the method invocation. Method invocation followed by {} or do..end is the way in which we define a block in Ruby.**


**When a method is called with a block the block acts as an argument to the method**

The way that an argument will be used whether it is a method parameter or a block depends on how the method is defined.

```ruby
def greeting
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

# Outputes 'Goodbye'
```
In the above example the method is not defined to use a block in any way so the block is not executed.

```ruby
def greeting
  yield
  puts "Goodbye"
end

word = "Hello"

greetings do
  puts word
end

#outputs 'Hello'
#Outputs 'Goodbye'
```

In the above example the greetings method is invoked with a block. And the `yield` keyword inside the greeting method def controls the interaction with a block. In this case it executes the block once. 

So methods and block can interact with each other; the level of that interaction is set by the method definition and then used at method invocation.

When invoking a method with a block, we arent just limited to executing code within the block; depending on the method definition, the method can use the return value of the block to perform some other action. E.g the `Array#map` method.

The `map` method iterates over an array and returns a new array containing the values returned by the block.

Method definitions cannot directly access local variables initialized outside of the method definition, nor can local variables initialized outside of the method definition be reassigned from within it. A block can access local variables initialized outside of the block and can reassign those variables. We already know that methods can access local variables passed in as arguments, and now we have seen that methods can access local variables through interaction with blocks.

### A new understanding of method definitions and method invocations:

we can think of **method definition** as setting a certain scope for any local variables in terms of the parameters that the method definition has, what it does with those parameters, and also how it interacts (if at all) with a block.

We can then think of **method invocation** as using the scope set by the method definition.

If the method is defined to use a block, then the scope of the block can provide additional flexibility in terms of how the method invocation interacts with its surroundings.

Method definition sets a scope for local variables in terms of parameters and interaction with blocks

Method invocation uses the scope set by the method definition.