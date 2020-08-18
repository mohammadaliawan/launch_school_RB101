# What are Collections 

Collections e.g Strings, Arrays and Hashes are made up of individual elements.

In order to be able to work with collections, we need to understand:
- their structure
- reference individual elements.
- assign individual elements.

## How to reference Individual Elements of Collections

### Strings

#### What is the Structure of Strings:

Strings are made up of (COI)
- individual characters (C)
- that are ordered (O)
- and have an integer based index.(I) (starting from 0)

#### How to reference individual characters of strings:

We can use the string element reference method to reference each character of a string.

str[index] -> new_str or nil

If given a single integer as an argument to this method, this method returns a single character string at that index in the string. 

The string element reference method is actually syntactical sugar for the String#slice method.


#### How to reference multiple characters of strings:

The same String element reference method String#[] or String#slice can be used to reference multiple characters of a string.

```ruby
- str[start_index, number_of_characters] --> new_str  OR
- str[start_index..end_index] -> new_str or nil

```

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

#### What is the Structure of Arrays:

Arrays are:

- made up of references to actual objects (R)
- Ordered (O)
- Integer Indexed Lists (startng with 0 index) (I)
- of objects (of any type)(O)

#### How to Reference an element in an Array: 

Just like in strings, a specific element in an array can be referenced using it's index .

Use the element reference method or the slice method:

```ruby
ary = %w(a b c d e f g)

ary[index] --> obj (at index) or nil
ary.slice(index) --> obj (at index) or nil
```

#### How to reference multiple elements in an array:

```ruby
ary[starting_index, number of elements] --> new_ary or nil
ary[range] --> new_ary or nil

ary.slice(starting_index, number of elements) --> new_ary or nil
ary[range] --> new_ary or nil
```


In both strings and arrays element reference is done is the same way:
Using the #slice method, for which the #[] is ruby syntactical sugar.
In both cases the slice method returns a new_ary or a new_str except in the case of Arrays when a single index is passed
It returns an obj at that index but in the case of strings it always returns a new_str.

### Hashes

#### What is the Strucuture of a Hash:

Hashes are a collection:
- stores elements by associated keys
- Enries are called key-value pairs
- keys are unique
- keys and values can be any type of object

#### What are the different ways of creating hashes?

The literal Syntax : {key: value, key2: value2} / 
{:key => value, :key2 => value2}

Hash::[] - Hash[key,value,...] -> new_hash
           Hash[[[key,value],...]] -> new_hash, takes an array of key-value pairs

Hash::new - Hash.new -> new_empty_hash, (defualt value = nil)
            Hash.new(obj)-> new_empty_hash, (default value = obj)
            Hash.new{|hash,key| block} -> new_hash
            In this form, when accessing keys that do not exist in the hash, the block is called with the hash obj and the key and should return the default value. We can also store the value in the hash if required.

#### What is a default value in a hash? How can default values be set?

A default value is the value that is returned when accessing keys that do not exist in the hash.

By Passing it as the argument to Hash.new
Or By using Hash#default= 

hsh.default = obj -> obj, Sets the default value

#### How do you refer to values in a hash using their keys?

Element Reference: Hash#[], 
hsh[key] -> value, Retrieves the value obj corresponding to the key obj.If not found returns the default value.

#### Can two values have the same key?

No. Keys must be unique. Any duplicated keys will be overwritten.


