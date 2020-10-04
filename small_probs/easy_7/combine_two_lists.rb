=begin
Write a method that 

combines two Arrays passed in as arguments, 

and returns a new Array that contains all elements from both Array arguments, 

with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:


interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Problem:
We need to write a method that has:
- input: two arrays
- output: a new array
- Rules:
- Return a new array containing all elements from both input arrays
- The elements in the new array should taken alternatingly from first array, second array , first array etc...
- Both arrays will be non empty and will contain same number of elements.

Implicit:
- Elements in the returned array should have the first element taken from the first array argument

DS:
Input: arrays
Ouput: Array

Algorithm:

Create a new empty array (call it result)
Create a loop that iterates through both input arrays at the same time

Insert elements from the first array and then second array on each iteration  into the result array

=end

def interleave(ary_1, ary_2)
  result = []

  counter = 0
  loop do
    result << ary_1[counter]
    result << ary_2[counter]

    counter += 1
    break if counter >= ary_1.size
  end
  result
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']