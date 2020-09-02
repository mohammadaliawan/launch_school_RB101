=begin
Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []

PROBLEM
- Input: array (single)
- Output: array 

- rules:
    - Explicit Rules:
      - Write a method that takes an array as an argument
        - That array is reversed in its placed (it is mutated)
      - Return value should be the same array object
    
    - Implicit rules
      - Array with a single element as an argument returns the same array
      - Empty array as argument returns empty array

DATA STRUCTURE
- Arrays

ALGORITHM
- Take the elements in the given array and pass them to a collection in reverse order
- Modify/mutate my original given array according to the collection that has 
  elements in reverse order

PSEUDOCODE
- Accept an array (array)
- Initialize and empty array (reversed_elements)

- Start a loop
  - I will remove the last element of my given array and push it
    into my empty array
  - repeat this process until my initial array is empty

-Initialize an variable called index equal to 0

- Start another loop
  - I will push contents from the reversed elements array into my original array
  - break out of the loop when the index = size of reversed_array - 1

- Return original array
=end

def reverse!(array)
  return array if array.empty?
  reversed_elements = []
  
  loop do
    reversed_elements << array.pop
    break if array.size == 0
  end
  reversed_elements
  
  index_value = 0
  
  loop do
    array << reversed_elements[index_value]
    index_value += 1
    break if index_value == reversed_elements.size 
    #break if index_value >= reversed_elements.size
  end
  
  array

end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
p list == []