=begin
The maximum sum subarray problem consists in finding the maximum sum of contiguous subsequence 
in an array of integers.

max_sequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] should be 6 [4, -1, 2, 1]

Easy case is when the array is made up of only positive numbers and the maximum sum is 
the sum of the whole array
If the array is made up of only negative numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that empty array is also a valid subarray.

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #4, -1, 2, 1
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12 #2, 1, 5, 4
  
=end
=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** :array of integers, +, -, empty
**Output** : integer, maximum sum of a subarray

**Explicit Requirements/Rules/Boundaries**
- write a method that takes an array of integers as argument
- returns the max sum of a subarray of the given array. 
  - max sum: of all the possible subarrays,the sum of the integers of the subarray having the max sum
- only postive number in given array -> return the sum of whole array
- only negative numbers in given array -> return 0
- empty array has 0 max sum
- empty array is a valid subarray

**Implicit Requirements/Rules/Boundaries**
- the whole is a valid subarray
- [] -> whole array
- - < 0 < +

**Special Terms**
- contiguous subsequence: subarray
- max sum: of all the possible subarrays,the greatest or largest result of adding all the integers of the subarray


**Examples/Test Cases**
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #4, -1, 2, 1

[], [-2], [-2, 1], ...

max_sequence([11]) == 11
[] =0, [11] = 11

max_sequence([-32]) == 0
[] = 0, [-32] =-32


**Questions**
-


**Data Structures**
[...] -> [[..], [...],..] -> [sums...] -> sort -> get the last element

- input: array of integers
- Output: integer
- Intermediate: array of arrays of integers
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an array of integers
- return 0 if all integers in the array are less than zero
- return sum of whole array if all integers in the array are greater than or equal to zero
- Find all the possible subarrays # [], whole array
  - find all subarrays that start with each index in the array and end with that index or any subsequent index
    - init an empty array # subarrays
    - iterate over the starting index from 0 to last index
      - iterate over the ending index from current starting index to last index
        - extract the subarray with the current starting index and end index
        - save it to an array of subarrays
  - append [] to the subarrays
- Find the sum of each subarray
  - Transform the array of subarrays into an array of sums
- Return the largest sum
  - sort the array of sums in ascending order
  - return the last number


**Implementation details**\
- Find all the possible subarrays
  INIT subarray to []
  - iterate over starting index from 0 to last_index |start_index| # 0.upto(array.size - 1)
    - iterate over ending index from start_index to last_index # start_index.upto(array.sizr - 1)
      - array.slice(start_index..end_index)


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def find_subarrays(nums_ary)
  subarrays = []
  last_index = nums_ary.size - 1
  0.upto(last_index) do |start_index|
    start_index.upto(last_index) do |end_index|
      subarrays << nums_ary[start_index..end_index]
    end
  end
  subarrays.push([])
end

def max_sequence(nums_ary)
  if nums_ary.all?{ |num| num < 0}
    return 0
  elsif nums_ary.all?{ |num| num >= 0}
    return nums_ary.sum
  end

  subarrays = find_subarrays(nums_ary)

  sums = subarrays.map{ |subarray| subarray.sum}

  sums.sort.last
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])== 6 #4, -1, 2, 1
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12 #2, 1, 5, 4

