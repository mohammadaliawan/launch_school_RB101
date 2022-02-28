=begin

Write a method that takes an Array as an argument, and
reverses its elements in place; that is, mutate the Array passed
into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of different elements
**Output** : same array with elements in reverse order

**Explicit Requirements/Rules/Boundaries**

- write a method
- takes an array as an argument
- mutate the passed array by reversing its elements in place
- return value of the method should be the same array

**Implicit Requirements/Rules/Boundaries**
- empty array should return the same empty array
- elments of the array need to be reversed, not the individual chars of string element
- a single element in an array, return the same array as it is


**Special Terms**
-


**Examples/Test Cases**
- input: [1,2,3,4]
- Output: [4, 3, 2, 1]

[1,2,3,4], []
[1,2,3], [4] - pop out the last element from the given array, append to the new array
[1,2], [4,3]
[1], [4,3,2]
[], [4,3,2,1]

[4],[3,2,1] - shift from the new array, append to given array
[4,3], [2,1]


**Questions**
-


**Data Structures**
- input: array
- Output: array
- Intermediate: 
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of elements # 0 to n elements
- init a new empty array # new_reversed_array
- until the given array is empty
  - take out the last element from the given array, append to the new array
- until the new array is empty
  - take out the first element from the new array, append to the given array
- return the given array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# def reverse!(array)
#   new_reversed_array = []

#   until array.empty?
#     last_element = array.pop
#     new_reversed_array << last_element
#   end

#   until new_reversed_array.empty?
#     first_element = new_reversed_array.shift
#     array << first_element
#   end

#   array
# end

def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < (array.size / 2)
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
  array
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true


