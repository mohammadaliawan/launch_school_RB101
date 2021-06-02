# Hashes in Ruby

## What is a hash? What are entries in a hash often called?

A Hash is a data structure that stores elements by associated keys.
Hash Entries are called key-value pairs.

A dictionary like collection of unique keys and their values.

## What kind of objects can be used as key?

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






