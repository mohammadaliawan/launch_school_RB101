# Notes For Ruby 100

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

## 