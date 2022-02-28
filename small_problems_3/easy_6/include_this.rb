=begin

Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false


------ PED:- 0 MIN to 12 MIN --------------


**Input** : two: one array and another value
**Output** : boolean, true if the value provided is in the array
                      false if the value provided is not in the array

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes two arguments
- 1: array, 2: some value (integer, nil, string etc)
- return true if 2nd argument is in the first argument array
- false otherwise

**Implicit Requirements/Rules/Boundaries**
- array is empty -> return false
- [nil] != empty array
- [] != contains nil object


**Special Terms**
-


**Examples/Test Cases**
- input: [1,2,3,4,5], 3
- Output: true

if any of the elements equals the provided value then it is included and return true


**Questions**
-


**Data Structures**
- input: array and integer, or stirng, nil
- Output: boolean
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm** [1,2,3,4,5], 3
- Subprocess: any element equal to the provided value?
  - For each element in the array
    - if current element is equal to the provided value # ==
      - return true
    -otherwise
      - go to the next value
  - return false


**Implementation details**
- Array#each


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****

=end

def include?(array, obj)
  array.any? {|ele| ele == obj}
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

