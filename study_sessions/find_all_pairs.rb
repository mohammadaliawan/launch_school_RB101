=begin
You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

Test.assert_equals(pairs([1, 2, 5, 6, 5, 2]), 2)
Test.assert_equals(pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]), 4)
Test.assert_equals(pairs([0, 0, 0, 0, 0, 0, 0]), 3 )
Test.assert_equals(pairs([1000, 1000]), 1)
Test.assert_equals(pairs([]), 0)
Test.assert_equals(pairs([54]), 0)

#Problem:

input: array of integers
Output: integer, that is a count of all pairs of integers in the given array

Rules:
Explicit: 
- Given an array of integers
- Return an integer that is a count of all pairs of integers
  - what is a pair? A pair is two of the same integer
- when input is an empty array , return 0
- When input array contains only one integer, return 0
- if more than one pair of a certain number, when a value has been used to make a pair, dont use it again to make a pair 
- Maximum array length = 1000, range of values in array is 0..1000
Implicit:
- Assume that original array cannot be mutated.

DS:

input: array of integers
output: integer

Algorithm:
- Given an array of integers
- if the number of elements in the array is less than or equal to 1, return 0
- sort the array of numbers
- remove the current first element from the array and save as current number
-compare current number with the current first number in the array
  - if a match is found, 
      remove that number from the array
      increment pair counter by 1
      remove the next number from the array and save as current_number
  - if a match was not found, that means there are no more pairs for that current_number
    - remove the first number from the array and save as current number
- return pair counter when the array length becomes zero.
=end

def pairs(ints_ary)
  return 0 if ints_ary.size <= 1

  working_ary = ints_ary.sort

  pair_counter = 0

  current_number = working_ary.shift

  while working_ary.size > 0
    if current_number == working_ary.first
      working_ary.shift
      pair_counter += 1
      current_number = working_ary.shift
    else
      current_number = working_ary.shift
    end
  end
  pair_counter
end

def pairs(ints_ary)

  keys_ary = ints_ary.uniq
  
  counts_hash = keys_ary.each_with_object({}) do |key, hash|
    hash[key] = ints_ary.count(key)
  end
 
  counts_hash.values.reduce(0){|memo,value| memo + value / 2}
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0



