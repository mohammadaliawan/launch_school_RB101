=begin
Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.
Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

Examples:

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array
**Output** : new array with elements of the given array in reverse order

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes an array of elements
- returns a new array
- with the given elements in reverse order


**Implicit Requirements/Rules/Boundaries**
- object ids of the given array and returned array should be different # dont return the given array
- if only one element in the given array, return a new array with the same element
- if empty array, return a new []
- dont mutate the original array


**Special Terms**
-


**Examples/Test Cases**
- input:
- Output:


**Questions**
-


**Data Structures**
- input: array
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given an array of size 0 to n
- init a new empty array # new_reversed_array
- iterate through the array in reverse order
  - append the current_element to the new_reversed_array
- return the new array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def reverse(array)

  array.each_with_object([]) do |ele, new_array|
    new_array.unshift(ele)
  end
end

# def reverse(array)
#   array.sort do |a, b|
#     array.index(b) <=> array.index(a)
#   end

# end

p reverse([1,2,3,4]) #== [4,3,2,1]          # => true
p reverse(%w(a b e d c)) #== %w(c d e b a)  # => true
p reverse(['abc']) #== ['abc']              # => true
p reverse([]) #== []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true