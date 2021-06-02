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

array.push(obj,...) => ary itself, appends, pushes the given obj(s) to the end of this array.

Array# << => ary itself, appends the given obj to the end of the array, several appends can be chained togather.

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

The main difference between #map and #select is the way the new element's value is chosen. #map returns a new array with each element transformed based on the block's return value.

#select returns a new array containing elements selected only if the block's return value evaluates to true.