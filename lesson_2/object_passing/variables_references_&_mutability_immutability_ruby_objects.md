# Variable References and Mutability of Ruby Objects

## What is an object?

An object is a bit of data that has some sort of state or value and associated behavior.

## How are objects assigned to variables?

objects can be assigned to variables.

`greeting = "Hello"`
=> "Hello"

## What does the above code tell ruby?

The above code tells ruby to associate the variable `greeting` with the string object whose value is "Hello".

## In ruby, how would you describe the relationship between greeting and the string object "Hello"?

`greeting` references or points to the string object.

`greeting` is bound to the String object.

## What is the act of doing this greeting = "Hello" known as?

String object represented by the literal 'Hello' is assigned to the variable `greeting`

## How is the variable greeting able to reference the string object "Hello"?

It does so by storing th.e object id of the string object "Hello"

> Every object in Ruby has a unique object id, and that object id can be retrieved simply by calling `#object_id` on the object in question. Even literals, such as numbers, booleans, `nil`, and Strings have object ids


## What happens if you assign a variable to another variable?

It causes the second variable to reference the same object as the first variable. Both variables will store the same object id.

Since both variables are associated with the same object, using either variable to mutate the object is reflected in the other variable.

 ## What does reassignment to a variable does to that variable?

Reassignment to a variable doesn't mutate the object referenced by that variable;

Instead the variable is bound to a different object.

Reassignment binds a different object to the variable. It doesnt mutate the variable

## What does reassignment do to the original object?

The original object is merely disconnected from the variable. It is no longer accessible if there are no other variables poiting to it. 

## What is Mutability and Immutability?

Either objects can mutable or immutable. Mutable objects can be mutated i.e. their values can be altered. Immutable objects cannot be mutated- they can only be reassigned.

## In Ruby which object types are immutable?

Numbers and Booleans. Once we create an immutable object we cannot change it. 

## `+=`, `*=` and other operators like these, what do these do?

These operators reassign the variable to a new object. They change the object which the variable on the left references. They dont mutate the original object. 

+= or -= create a brand new object and bind the variable on the left to that new object.

Simple assignment never mutates an immutable object