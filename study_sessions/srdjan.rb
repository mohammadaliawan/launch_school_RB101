=begin
# Given an array of n positive integers and a positive integer s,
find the minimal length of a contiguous subarray of which the sum ≥ s.
If there isn't one, return 0 instead.

p minSubLength([2,3,1,2,4,3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- Given an array of n positive integers
- and a positive integer s
- return the minimum length of a contiguous subarray
- sum of which is >=  s
- If no subarray found return 0

**Implicit**
- if one of the elements is greater than s then return 1
- if sum of all the elements is less than s, then return 0

**Special Terms**
-

**Questions**
- can the array itself be considered a subarray?
- can the array have more than one sub array of the same length the sum\
of which is greater than or equal to s
- which one do we return in that case

- Input: an array of positive integers, a positive integer s
- return: the length of the shortest subarray
 the sum of which is greater than or equal to s

**Data Structures**
- input: array, integer
- Output: integer
- Intermediate:
- Storage:

**Algorithm**
- if one of the elements is greater than or equal to s then return 1
- if sum of all the elements is less than s, then return 0
- find all the possible subarrays of the given array,1 <= length <= length of given array
- sort the sub arrays by length
- iterate through the list of sorted subarrays
  - for each subarray get the sum #reduce
    - if sum >= s
    - return length of the current sub array

**Implementation details**

Subprocess: getting all the sub arrays
- create a sub_arrays = []
For starting_index from 0 to size -1
  For length from 1 to size - starting index
-   append array[starting_index, length_of_subarray] to sub_arrays


=end

def find_subarrays(array)
  sub_arrays = []

  0.upto(array.size - 1) do |starting_index|
    1.upto(array.size - starting_index) do |subarray_size|
      sub_arrays << array[starting_index, subarray_size]
    end
  end

  sub_arrays
end

def min_sub_length(array, num)
  sub_arrays = find_subarrays(array)

  sub_arrays.sort_by!{|sub_array| sub_array.size}

  selected_subarrays = sub_arrays.select do |sub_array|
    sub_array.reduce(:+) >= num
  end
  selected_subarrays
end

# p min_sub_length([2,3,1,2,4,3], 7) == 2
# p min_sub_length([1, 10, 5, 2, 7], 9) ##== 1
# p min_sub_length([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) #== 4
p min_sub_length([1, 2, 4], 8) #== 0
