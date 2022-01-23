=begin

Given an unordered array and the information that exactly one value in the array
occurs twice (every other value occurs exactly once), how would you determine which
value occurs twice? Write a method that will find and return the
duplicate value that is known to be in the array.

Examples:

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of integers
**Output** : integer, that occurs twice in the array

**Explicit Requirements/Rules/Boundaries**
- given an unordered array of integers
- exactly one integer occurs twice in the array
- all other values occurs once only
- write a method
- finds the duplicate value and returns it


**Implicit Requirements/Rules/Boundaries**
- there is only one value that occurs twice


**Special Terms**
-


**Examples/Test Cases**
- input: [1, 5, 3, 1]
- Output: 1

[1,1,3,5] value which occurs twice will become consecutive



**Questions**
-


**Data Structures**
- input:array of integers
- Output: integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given an unordered array of integers
- sort the array in ascending order
- For each element in the array upto the second last element
  - if the current element equals the next element in the array
    - return the the current element
  - otherwise,
    - go to the next element

**Implementation details**
- iterate
  each_with_index do |num, index|


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****

=end

def find_dup(nums_array)
  nums_array_sorted = nums_array.sort

  nums_array_sorted.each_with_index do |num, index|
    return num if num == nums_array_sorted[index + 1]
  end
end

def find_dup(array)
  array.find {|number| array.count(number) == 2}
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
