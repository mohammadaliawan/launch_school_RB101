# Variables References and Mutability of Ruby Objects

## What is an object?

An object is a bit of data that has some sort of state called a value and associated behaviour.

## Variables and References

Objects can be assigned to variables like this:

```ruby
greeting = "Hello"
```
This tells ruby to associate the name greeting with the String Object whose value is "Hello".

`greeting` is said to reference the String Object.

The String Object represented by the literal "Hello" is assigned to a variable named `greeting` which causes the variable `greeting` to reference the String object whose value is "Hello".

It does so by storing the object id of the String Object. 
Every object in Ruby has a unique object id and that object id can be retrieved simply by calling the #object_id.

If we do this:
```ruby
whazzup = greeting
```
Essentially we are assigning the String Object referenced by `greeting` to `whazzup`

They both now point to the same String Object. They will have the same object id.

greeting and whazzup are aliases for each other.

Since both variables are associated with the same object, using either variable to alter the object is reflected in the other.

## Re-assignment

If we assign a new object to one of these variables

```ruby
greeting = "Dude!"
```

greeting and whazzup no longer refer to the same object; they have different values and different object ids

**What this shows is that reassignment to a variable doesn't change the object referenced by that variable; instead the variable is bound to a completely new object -- made to reference a new object. The original object is merely disconnected from the variable.**

## Mutability

Objects can be either mutable or immutable. Mutable Objects can be changed; immutable objects cannot be changed.

Understanding mutability of an object is neccessary to understanding how your language deals with those objects.

### Immutable Objects

In Ruby, numbers and boolean values are immutable. Once we create an immutable object we cannot change it.

There are no methods available that let you alter the value of any immutable object. All you can do it reassign the variable so it references a different object. This disconnects the original object form the variable which makes it available for garbage collection unless another reference to the object exists elsewhere.

`+=` like simple reassignment creates a new object and binds the variable to that new object.

Reassignment doesnt change the object. Instead it binds a new object to the variable.

nil and Range Objects are also immutable.

## Mutable Objects

Most objects in Ruby are mutable. They are objects of a class
that permits modification of the object's state in some way.

## How arrays are stored in memory

```ruby
a = %w(a b c)

a[1] = "-"
```

a is a reference to an Array and that Array contains three elements; each element is a reference to a string object

When we assign '-' to a[1] we are binding a[1] to a new String; we're modifying a, but not a[1].

Strings and other collection classes are similar in the way they behave-- variables reference the collection and the collection contains references to the actual objects in the collection. 

Strings are a little bit different -- its not really neccessary to have seperate objects for each character -- but they act in a similar way.


## Introduction to Object Passing

When you pass an object as an argument to a method, the method can in theory either modify the object or leave it unmodified.

The ability to modify arguments depends in part on the mutability or immutability of the object represented by the argument but also on how the argument is passed to the method.

Some languages make copies of the method arguments and pass those copies to the method -- since they are merely copies , the original objects can't be modified. Objects passed to methods in this way are said to be passed by value and the language is said to be using a pass by value object passing strategy.

Other Languages pass references to the method instead -- a reference can be used to modify the original object, provided the object is mutable. This is called passed by reference, the language is said to be using a pass by reference object passing strategy.


Many languages employ both object passing strategies. One strategy is used by default; the other is used when a special syntax, keyword or decleration is used. Some languages may even employ different defaults depending on the object type.

It is important to know which one is being used.

## Developing a Mental Model

Pass by value means copying the original object so it cannot be modified.

Since immutable objects cannot be changed, they act like Ruby passes them around by value when they are passed to methods as arguments. The method only has a copy of the original object so there is no way for the method to modify the original object.

Mutable Objects can always be modified simply by calling one of their mutating methods. They act like Ruby passes them around by reference; it isnt neccessary for a method to modify an object that is passed by reference, only that it can modify the object.

Pass by refernce means that only a reference to an object is passed around;the variables used inside a method are bound to the original objects. This means that the method is free to modify those objects.