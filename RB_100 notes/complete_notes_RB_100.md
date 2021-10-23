# COMPLETE_RB100_NOTES

## Basics

### What are Literals?

A literal is any notation that lets you represent a fixed value in source code.

```ruby
"Hello World" # String Literal
123           # Integer Literal
12.34         # Float Literal
true          # Boolean Literal
nil           # Nil Literal
[1, 2, "a"]   # Array Literal
{a: 1, b: 2}  # Hash literal
:sym          # Symbol literal
```

### What are Strings? What are they used for in programming? How are they formed? What is the difference between the two forms of string literal formation in ruby?

> A string a is a sequence of characters in a specific sequence.

Text Data like names, messages,  descriptions are represented using string literals.

Strings literals can be formed using single quotes or double quotes. The quotes are not part of the value; they are only syntactic components.

String Literals formed using '' : Does not allow escape sequences except: \\ and \'; and also does not allow string interpolation.

String literals formed using "" : All escape sequences are allowed. String interpolation also works.

String interpolation allows merging ruby code with strings. `"#{ruby expression here}"`; the returned expression will be concatenated with the surrounding string.

### What are different types of numbers in ruby? How are they represented?

Numbers are represented many ways in ruby. The most basics forms are integers and floats. Integers are whole numbers and integer literals can be represented in Decimal, or 2 to 36 based numbers. e.g `0b101` is the integer 5 in binary. in IRB if you input any number in hexa or binary or anyother form it returns the equivalent decimal form.

### What does `nil` represent in ruby? How can you check if somthing is of the nil type? What is an important property of nil when used in an if conditional?

`nil` is used to represent nothingness in ruby. A variable that references nil, could be understood as being completely empty or of no specific type. For example if an expression in ruby returns nothing then it is actually returning `nil`.

We can use the `.nil?` method to check if something is of the nil type e.g "Hello World".nil? => false

When `nil` is used in an `if` conditional it is treated as `false`meaning it is falsey.

### Symbol

A Symbol is used when you want to reference something like a string but dont ever intend to print it to the screen or change it.

### Operations

Adding, subtracting, multiplying: Use operators `+, -, *`.

Division: use `/` operator

Integer division returns an integer value. Float division returns a floating point value.

#### Modulo Operator, How does it work?

Modulo: use the `%` operator. Can also be referred to as the remainder operator but not strictly correct.

`a % b` : a is quotient, b is the modulus.

When working with positive integers the `%` operator returns the remainder of a division operation.

**Modulo vs Remainder**

The `#remainder` method returns the remainder of integer division operation.

And the modulo operator `%` also returns the remainder of an integer division operation but only with positive integers.

When working with negative integers, the two operations dont return the same result.

In case of `%`: If the modulus is positive the result is positive, if it is negative, then the result is negative.

In case of `#remainder` method: if the first operand is positive the result is positive, if it is negative the result is negative.

Try to work exclusively with positive integers if you can. Both operations will return identical results.

**#divmod**

THe `#divmod` method returns an array containing the integer result of division an its modulo value.

### Expressions and Return

An expression is anything that can be evaluated. Almost everything you right in ruby is an expression.

Ruby expressions always return a value even if that value is `nil` or an error.

### `puts` vs. `return`

**Expression do something, but they also return something** The value returned is not neccessarily the action that was performed.

For example:
```ruby
irb(main):007:0> puts "Hello World"
Hello World
=> nil
```
`#puts` outputs whatever is passed to it as an argument, but it always returns `nil`.

However `#p` returns and outputs the argument that is passed to it.

*****************************************************************************************************

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

*****************************************************************************************************

# Flow Control

## What is Flow Control? What is it used for?

Flow Control or Control Flow is about controlling the flow of execution of a
program. It gives our program the flexibility to make decisions about which path to follow. And these decision are made based on certain conditions.

## What are conditionals? How are they formed?

- Condtionals are a way of controlling the program flow. They are like forks in the road.
- They are formed using `if` statements and comparison and logical operators
`(<,>,<=,>=,==,!=.&&,||)`
- They are basic logical structures.

## `if-else` statements.How do they work? What are the different parts?

An `if` statement has two parts. A "test" and a "then" part. If the "test" part evaluates to true, then the "then" expression is evaluated. If "test" evaluates to false, then the "then" part is not evaluated.

## When is the `else` expression evaluated?

The else expression is evaluated if the "test" evalautes to false. And if there are no matching conditions.

## When is an `elsif` used? and when is an `elsif` expression evaluated?

When we want to test more than one number of conditions.We can add an arbitrary number of tests to an if statement using `elsif`.

An `elsif` executes when all the tests above the elsif are false.

## When is an if expression complete?

**Once a condition matches either the if condition or any elsif condition, the if expression is complete. No further tests will be performed.**

The first condition that matches is executed.

## What is the return value of an if expression?

Returns the evaluated result of the branch whose condition evaluates to true, or nil if there is no such branch

## How is modifier if and unless written?

`puts "Hello World" if x == 3`

`puts "Hello World" unless x == 3`

## How do unless expressions work?

`unless` statments are the opposite of if statements.

If the test is false, the “then” expression is executed.

## What is the return value of an unless expression?

The result value of an unless expression is the last value executed in the expression.

## Can unless expressions have an else condition.

Yes.

## What are these <,>,>= called? What do they return?

Comparison operators. Always return a boolean value.

## meaning of `<`

The 'less than' symbol. Anything to the left of the symbol has a lower value than anything to the right.

## meaning of `>`

The 'greater than' symbol. Anything to the left of the symbol has a greator value than anything to the right.

## when you are comparing for equality == you must be comparing two of the same type or you will always get a false boolean value.

## Meaning of `&&` operator

`&&` the 'and' operator- Expressions to the left and to the right of this operator have to be **both** true for the entire expression to be evaluated to true.

## If you have multiple && operators in an expression, When will you have a false return value? And when will it result in a true return value?

If even a single condition is false, the whole expression will return false.
All of them have to be true for the entire expression to return true.

## Meaning of `||` operator?

`||`- the "or" operator. Either the expression to the left has to be true, or the expression to the right has to be true for the entire expression to be evaluated to true.


## If you have multiple || operators in an expression, When will you have a false return value? And when will it result in a true return value?

If even a single condition is true, the whole expression will return true.
All of them have to be false for the entire expression to return false.

## What is the Order of Precedence for comparison and logical operators?

Comparision(<,>,<=,>=)
Equality(==,!=)
Logical AND (&&)
Logical OR (||)

## How does a `case` expression work? How many ways are there to use a case expression? What are they?

Comparing an object against multiple patterns:
- first defining a case and
- then evaluating the value of the case and
- what operation to complete if that case is true.

```ruby
case object
when o1
  #do this
when o2
  #do this
else
  #do this
end
```

OR like an if-elsif expression with no case defined


## When is a case expression complete?

A case expression is complete when a condition matches.
**The first `when` that matches is executed and all other matches are ignored.**

OR when the `else` expression is executed.

## When is the else expression executed in a case statement?

If no matches are found.

## How are multiple conditions placed on the same when and what does it mean?

```ruby
case a
when b, c, d
  #do this
end
```

Each condition is tried in turn. If either returns true the when will be executed.

## How to use when and the then expressions on a single line?

```ruby
case a
when 1, 2 then puts "a is one or 2"
else           puts "I dont know."
end
```

***********************************************************************************************

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

****************************************************************************************************

# Arrays in Ruby

## What is an array?

An array is an ordered and indexed list of elements that can be of any type.

The index of the first element being 0.

## How do negative indices work in arrays?

A negative index is assumed to be relative to end of the array.
An index of -1 indicates the last element of the array.

## Different way of creating arrays?

Literal Constructor: []

Array.new(size= 0, default=nil)

Array.new(array) creates a copy of the array passed as parameter.

## How do you find the first element(s) of an array? Mutating or Non mutating?

array.first -> obj or nil if array is empty
array.first(n) -> new_ary of the first n elements

Both forms are non mutating methods.

## How do you find the last element(s) of an array? Mutating or Non mutating?

array.last -> obj or nil if array is empty
array.last(n) -> new_ary of the last n elements

Both forms are non mutating methods

## How do you reference any element(s) of an array?

You can reference any element by its index number using the
Array#[] method.

ary[index] -> obj or nil
ary[start_index,length] -> new_ary that is a subarray of ary
ary[range_of_indices]-> new-ary that is a subarray of ary

All these are non mutating forms.
Element reference returns the actual object in the array not a copy.

## How to remove last element or elements of an array?

array.pop -> obj or nil removes and returns the last element
array.pop(n) -> new_ary, removes the last n elements and returns them in a new_ary

Mutating Method.

## How to add an element(s) to the end of an array?

array.push(obj,...) -> ary itself, appends, pushes the given obj(s) to the end of this array.

Array# << -> ary itself, appends the given obj to the end of the array, several appends can be chained togather.

Mutating Methods

## How to remove element(s) from beginning of an array?

Array#shift -> obj or nil, removes the first element and returns it. nil if empty

Array#shift(n) -> new_ary, removes the first n elements and returns them in a new_ary, ary contains only the remainder elements.

Mutating Method

## How to add elements to the beginning of an array?

Array#unshift(obj,...) -> ary, prepends objs to the front of the array. returns the ary itself

Alias: prepend
Mutating Method.

## How can you create a new array based on an original array?That is act on all the elements in the same way?

Array#map{|item| block} -> new_ary

Calls the block once for each element passing the element as a parameter.

Creates and returns a new array containing the values returned by the block.

Alias: collect

Non Mutating Method

## How does the map! method work?

ary.map!{|item| block} -> ary itself

Calls the given block once for each element of array passing in the element as a parameter.

Replacing the current element with the value returned by the block.
Alias: collect!
Mutating Method.

## How do you delete an element of an array at a certain index?

Array#delete_at(index) -> obj or nil

Deletes the element at the specified index
Returns the deleted object.

Mutating Method

## How do you delete all instances of a value from an array?

Array#delete(obj) -> item or nil

Deletes all items from the array that are equal to obj.
Returns the last deleted item or nil if no matching item is found.

Mutating Method

## How can you remove duplicate values from an array?

Array#uniq -> new_ary, Returns a new array by removing duplicate values in the array.Non Mutating Method

Array#uniq! -> ary or nil, Removes duplicate values from the array itself. Mutating Method.

## How do you select elements from an array based on a certain condition?

Array#select{|item| block} -> new_ary,

Returns a new array containing all elements from the original array for which the given block returns true.

Selects elements from an array for which a condition is true.

Non Mutating

## How do you permanently modify an array by keeping only those elements for which a certain condition is true?

Array#select!{|item| block}

Iterates over an array(calls the block passing in successive elements from the array)

Deleting elements for which the block returns false. Keeping only those for which the block returns true.

Mutating Method.

## When are two arrays equal? How can you compare two arrays for equality?

Two arrays are equal if they contain the same number of elements and if each element is equal to the corresponding element in the other_ary.

ary == other_ary -> boolean

## How do you convert an array to a string?

Array#to_s -> string
Array#inspect -> string

## How to check if an object is present in an array?

Array#inlcude?(obj) -> boolean

Returns true if the given object is present in self (that is, if any element == object), otherwise returns false.

## How to change a nested array to a one dimensional array?

Array#flatten(level) -> new_ary, returns a new array that is a one dimensional flattening of self.
For every element that is an array, extract its elements into the new array.

Non Mutating Method

## How do you iterate over an array?

Array#each{|item| block} -> ary

Calls the block once for each element in the array, passing that element as a parameter.

Returns the array itself.
Non Mutating

## How does each_idex and each_with_index work>

Works like each except the variable represents the index not the element.

Array#each_index{|index| block} -> ary

Non Mutating.

Array#each_with_index{|item,index| block} -> ary

Calls the block with the item and its index for each item in the array.

Non Mutating

## How do you sort an array in ascending order?

Array#sort -> new_ary, Returns a new array created by sorting the array.

Non Mutating method

Array#sort! -> ary, Sorts the array in place.

Mutating Method

## How do you find the index for an object obj in an array ary?

ary.index(obj) -> int or nil, returns the index of the first object in array which is equal obj.

index method returns the index of the first occurance of that obj in the array.

## What is the difference and similarity between Array#map and Array#select?

Both methods return a new array and the original array is not mutated.
Both iterate over the elments of the array calling a block for each element.

Difference lies in how the new element's value is chosen.
Array#map returns a new array with each element of the original array transformed based on the return value of the block.

Array#select returns a new array containing only those elements from the original array for which the block returns true.

*************************************************************************************************

# Hashes in Ruby

## What is a hash? What are entries in a hash often called?

A Hash is a data structure that stores elements by associated keys.
Hash Entries are called key-value pairs.

A dictionary like collection of unique keys and their values.

## What kind of objects an be used as key?

Any type of object can be used as keys.

## What are the different ways of creating hashes?

The literal Syntax : {key: value, key2: value2} /
{:key => value, :key2 => value2}

Hash::[] - Hash[key,value,...] -> new_hash
           Hash[[[key,value],...]] -> new_hash, takes an array of key-value pairs

Hash::new - Hash.new -> new_empty_hash, (defualt value = nil)
            Hash.new(obj)-> new_empty_hash, (default value = obj)
            Hash.new{|hash,key| block} -> new_hash
            In this form, when accessing keys that do not exist in the hash, the block is called with the hash obj and the key and should return the default value. We can also store the value in the hash if required.

## What is a default value in a hash? How can default values be set?

A default value is the value that is returned when accessing keys that do not exist in the hash.

By Passing it as the argument to Hash.new
Or By using Hash#default=

hsh.default = obj -> obj, Sets the default value

## If no default value is set for a hash, then what is the default value for that hash?

nil, nil will be returned if key is not found.


## How do you refer to values in a hash using their keys?

Element Reference: Hash#[],
hsh[key] -> value, Retrieves the value obj corresponding to the key obj.If not found returns the default value.

## How can you add new key-value pairs to an existing hash?

With Element Assignment Method you can add new key-value pairs:
 hsh[key] = value -> value,

Associates the `value` with `key`.

## How can change the value associated with a key in a hash?

With Element Assignment we can change the value associated with a given key.

hsh[key] = value -> value

Associates the `value` with `key`.

## How do you remove a key_value pair from a hash?

hsh.delete(key) -> value or nil, Deletes the key-value pair and returns the value for key.Returns nil if key is not found

hsh.delete(key){|key| block} -> value

If block is specified and key is not found then the key is passed result of the block is returned.

## How do you merge two hashes? What happends to duplicate keys?

hsh.merge(other_hash1,other_hash2,...) -> new_hash
hsh.merge(other_hash1, other_hash2,...){|key,oldval,newval1,newval2,..| block} -> new_hash

Returns a new hash that combines the contents of the hsh and all other given hashes.

If duplicate keys exist then value assigned to the key in the new hash are taken from the other_hashes, if no block is given.

If block is given, then value for each duplicate value is determined by the return value of the block.


## How do you merge a hash with another hash permanently?

hash.merge!(other_hash1,other_hash2,...) - > hsh
hash.merge!(other_hash1,other_hash2,...){|key,oldval,newval| block} -> hsh

Adds the contents of the given hashes to the reciever.

value for duplicate keys is determined in the same way as simple merge().

## How do you iterate over a hash?

hash.each{|key,value| block} -> hash

Calls the block once for each key in hash, passing the key-value pair as parameters.

## How do you check if a hash is empty?

hash.empty? -> true or false, returns true if hash contains no key-value pairs.

## How can hashes be used to pass optional parameters to a method?

```ruby
def method(arg1, options = {})
  #do something
end

method(arg1, {key1: value1, key2: value2})
```

## How can you check if a hash contains a specific key?

hsh.has_key?(key) -> true or false, returns true if the given key is present in hash.

## How can you check if a value is present in a hash?

hsh.has_value?(value) -> true or false, returns true if the given value is present for some key in the hash.

## How can you select some key-value pairs from a hash based on a condition?

hash.select{|key,value| block}, returns a new hash consisting of entries for which the block returns true.

## How do you permanently modify a hash by keeping only those key-value pairs for which a certain condition is true?

hash.select!{|key,value| block} -> hsh or nil,
Deletes those key value pairs for which the block returns false. Keeps those for which the block is true. Returns nil if no changes are made.

same as #keep_if

## How can we check if a key is present in a hash and return its value if it is and if not return a specific result/do something with that key?

hash.fetch(key,[default]) -> value or default is given(default is optional), Returns the value for the given key. If key is not present then returns default value if provided otherwise returns KeyError.

hash.fetch(key){|key| block} -> value or if key not found then will run the block and return value of the block will be returned.

## How do you get an array version of a hash? Mutating Method?

hash.to_a -> an_array version of the hash.

## How can you retrieve all the keys or all the values of a hash?

hash.keys -> an_array of all the keys.

hash.values -> an_array of all the values