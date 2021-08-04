# Methods to learn

## Arrays

- tally
- group_by
- sort_by

- reverse
reverse → new_array
Returns a new Array with the elements of self in reverse order

- join
join(separator = $,) → new_string

Returns the new String formed by joining the array elements after conversion

- count


- map
Invokes the block for each element of the array. Returns a new array containing the return values of the block.

The Array#map method transforms the array. It takes a do..end block as an argument. For each element of the array, it passes in the element to the block which is assigned to the block parameter and executes the code within the block. The return value of the block is stored in a new array on each iteration. This new array containing the return values of the block is returned by the method.

ary.map {|ele| block} -> new array- Non mutating method

- Array.new(size=0, default=nil) -> new_ary with size number of elements and each element referencing the same default object.

Array.new(array) -> new_ary thats a copy of the passed in array

- select

The select method returns a new array. It takes a block as an argument, and iterates over the array by passing in successive elements from the array to the block. This element is assigned to the block parameter on each iteration. The code within the block is executed and if the return value of the block is a truthy value, then the current array element is stored in the new array. If the return value of the block is falsey, that element is not stored in the new array.
In this way, a new array is returned by the method containing those values from the original array for which the block's return value is truthy.











## Strings

- split
split(pattern=nil, [limit]) → an_array

Divides str into substrings based on a delimiter, returning an array of these substrings.

If pattern is a String, then its contents are used as the delimiter when splitting str. If pattern is a single space, str is split on whitespace, with leading and trailing whitespace and runs of contiguous whitespace characters ignored.

- reverse

reverse → new_str
Returns a new string with the characters from str in reverse order


- count