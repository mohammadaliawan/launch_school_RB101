=begin

Write a method that combines two Arrays passed in as arguments,
and returns a new Array that contains all elements from both Array arguments,
with the elements taken in alternation.

You may assume that both input Arrays are non-empty,
and that they have the same number of elements.

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

------ PED:- 0 MIN to 12 MIN --------------


**Input** : two arrays
**Output** : a new array containing all the elements from both arrays but in alternation

**Explicit Requirements/Rules/Boundaries**
- write a method that
- takes two arrays as argus
- combines the elements from both arrays into a new array
- elements should be taken in alternation -> first_array[0], second_array[0], first[1], second[1]
- both shall be nonempty
- both contain the same number of elements

**Implicit Requirements/Rules/Boundaries**
- start with the first array


**Special Terms**
-


**Examples/Test Cases**
- input: [1, 2, 3], ['a', 'b', 'c']
- Output: [1, 'a', 2, 'b', 3, 'c']

[first_array[0], second_array[0], first[1], second[1], first[2], second[2]]
index : 0 to size - 1 of either array


**Questions**
-


**Data Structures**
- input: arrays
- Output: array
- Intermediate:
- Storage: []

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given two arrays containing the same number of elements #number_of_elements
- init empty array #combined_array
- For index from 0 to number_of_elements - 1
  - append elements at current index in first_array to combined_array
  - append elements at current index in second_array to combined_array
- return the combined_array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# def interleave(first_array, second_array)
#   combined_array = []

#   (first_array.size).times do |index|
#     combined_array << first_array[index]
#     combined_array << second_array[index]
#   end

#   combined_array
# end

def interleave(first_array, second_array)
  first_array.zip(second_array).flatten

end


p interleave([1, 2, 3], ['a', 'b', 'c'])#== [1, 'a', 2, 'b', 3, 'c']
