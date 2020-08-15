# What are Collections 

Collections e.g Strings, Arrays and Hashes are made up of individual elements.

In order to be able to work with collections, we need to understand:
- their structure
- reference individual elements.
- assign individual elements.

## How to reference Individual Elements of Collections

### Strings

#### What is the Structure of Strings

Strings are made up of 
- individual characters 
- that are ordered 
- and have an integer based index. (starting from 0)

#### How to reference individual characters of strings

We can use the string element reference method to reference each character of a string.

str[index] -> new_str or nil

If given a single integer as an argument to this method, this method returns a single character string at that index in the string. 

The string element reference method is actually syntactical sugar for the String#slice method.


#### How to reference multiple characters of strings

The same String element reference method String#[] or String#slice can be used to reference multiple characters of a string.

- str[start_index, number_of_characters] --> new_str  OR
- str[start_index..end_index] -> new_str or nil

```ruby
str = "The grass is green"

str[4,5] -> "grass"

str.slice(4,5) -> "grass"

```
BTW we can also chain the slice or [] method to reference some substring or character in the returned substring like so:

```ruby
str[4,5][0] -> "g"
```
Here we are calling the `[0]` on the return value of `str[4,5]`

### Arrays

#### Structure of Arrays

Arrays are:

- Ordered
- Integer Indexed Lists (startng with 0 index)
- of objects (of any type)
- Array elements are references to actual objects

#### Element Reference in Array: 

Use the element refernce method or the slice method:

ary = %w(a b c d e f g)

ary[index] --> obj (at index) or nil
ary.slice(index) --> obj (at index) or nil

Referencing multiple elements of an array:

ary[starting_index, number of elements]

