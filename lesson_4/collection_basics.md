# What are Collections 

Collections e.g Strings, Arrays and Hashes are made up of individual elements/objects

In order to be able to work with collections, we need to understand:
- their structure
- reference individual elements.
- assign individual elements.

## How to reference Individual Elements of Collections

### Strings

#### What is the Structure of Strings:

Strings use an integer based index that represents each character in the string. The index starts from 0 and increments by one.

#### How to reference individual characters of strings:

We can use the string element reference method to reference each character of a string.

str[index] -> new_str or nil
str.slice(index) --> new_str or nil

If passed a single index, returns a substring of one character at that index.

The string element reference method is actually syntactical sugar for the String#slice method.


#### How to reference multiple characters of strings:

The same String element reference method String#[] or String#slice can be used to reference multiple characters of a string.

```ruby
- str[start_index, number_of_characters] --> new_str  OR
- str[start_index..end_index] -> new_str or nil

```

- If passed a start index and a length, returns a substring containing length characters starting at the start index.

- If passed a range, its beginning and end are interpreted as offsets delimiting the substring to be returned.

```ruby
str = "The grass is green"

str[4,5] -> "grass"

str.slice(4,5) -> "grass"

```


### Arrays

#### What is the Structure of Arrays:

Arrays are: lists of elements/objects that are ordered by an integer based index.

- lists of objects
- ordered by
- a zero/integer based index

#### How to Reference an element in an Array: 

Just like in strings, a specific element in an array can be referenced using it's index .

Just as with String, arr#[] is alternative syntax for the Array#slice method.

Use the element reference method or the slice method:

Element Reference — Returns the element at index,

```ruby
ary = %w(a b c d e f g)

ary[index] --> obj (at index) or nil
ary.slice(index) --> obj (at index) or nil
```
ary[2,3] is alternative syntax for ary.slice method.

#### How to reference multiple elements in an array:

 Element Reference - returns a **subarray** starting at the start index and continuing for length elements, or returns a **subarray** specified by range of indices.

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
- Entries are called key-value pairs
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

#### Can values in a hash be duplicated?

Yes, two different keys can have the same value..

#### What is the difference between using Array#fetch method and the Array#[]

Array#[] returns the obj at the index provided or nil if the provided index is out of bounds for the array. The problem is that we cant be sure if the nil obj returned is an actual obj stored in the array or is it the return value for an out of bounds index. 

This is where the Array#fetch comes in. If passed in a single argument that is an integer, it return the obj at that integer index. And if the given index is out of bounds, it throws an IndexError. 

fetch(index) → obj
fetch(index, default) → obj
fetch(index) {|index| block} → obj

- Tries to return the element at position index, 
- but throws an IndexError exception if the referenced index lies outside of the array bounds. 
- This error can be prevented by supplying a second argument, which will act as a default value.
- if a block is given it will only be executed when an invalid index is referenced.


### Negative Indices



### Invalid Hash Keys



## Conversion

### Array to strings



### Strings to arrays


### Hashes to arrays


### Arrays to Hashes


## Element Assignment
