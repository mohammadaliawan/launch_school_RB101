=begin
Write a method that takes an Array as an argument,
and returns two Arrays (as a pair of nested Arrays) that contain the first half and
second half of the original Array, respectively. If the original array contains an
odd number of elements, the middle element should be placed in the first half Array.

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of integers
**Output** : a nested array of two sub arrays

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of integers as an argument
- return a nested array of two sub arrays
- first sub array contains the first half elements of the given array
- second sub array contains the second hald elements of the given array
- if there are odd number of elements, then the middle element is to be included in the first sub array
-


**Implicit Requirements/Rules/Boundaries**
- order of the elements in the sub array is the same as the order in the given array
- if given contains one element => return first subarray containng that element,
  - second sub array should be empty
- if given array empty => return the two empty sub arrays


**Special Terms**
-


**Examples/Test Cases**
- input: [1, 2, 3, 4]
- Output: [[1, 2], [3, 4]]

[1,2,3,4,5,6] - size = 6, lastindx = 5 /2 = 2

- if the size is even
[[1,2], [3,4]]
- size of the array # 4 [0 1 2 3]
- while the indx <= last_index/ 2
  put the elements of the given array in the first subarray
- when the indx > last_index/ 2
  - put the elements in the second subarray

[1, 5, 2, 4, 3] => [1, 5, 2], [4, 3]

[1,2,3,4,5,6,7] size = 7 , lastindx = 6 /2 = 3

- size of the array # 5 [0,1,2,3,4]
- while the index <= last_index/ 2
  put the elments in the first sub array
- while the index > last_ind/2
  put the elemts inthe second subarray

**Questions**
-


**Data Structures**
- input: array
- Output: nested array of two sub arrays
- Intermediate:
- Storage: [[], []]

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of integers
- init an empty array [[], []] # first_second_halves
- Find the last index of the array
- Iterate through the given array
  - for index <= last_index / 2
    - put the elements in the furst sub array
  - for index > last_index / 2
    - pus the elements in the second sub array

- return the first_second_halves

**Implementation details**
- each_with_index
- if  index <= last_index / 2
    - put the elements in the furst sub array # <<
    - []


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****

=end

def halvsies(array)
  middle = (array.size / 2.0).ceil

  array.partition.with_index do |_, indx|
    indx < middle
  end
end

p halvsies([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [[1, 2, 3, 4, 5], [6,7,8,9,10]]
p halvsies([1,2,3,4,5,6,7,8,9, 10, 11, 12,13]) == [[1,2,3,4,5,6,7], [8,9,10,11,12,13]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]