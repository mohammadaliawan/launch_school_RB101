=begin
Write a method that takes one argument, 
an array containing integers, and returns 
the average of all numbers in the array. 
The array will never be empty and the numbers 
will always be positive integers. 
Your result should also be an integer.


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

The tests above should print true.

Understanding the Problem:

Write a method that has:

Input: One argument, an array of positive integers, array is never empty, 
Output: Return avg of integers in array, return value integer
average = (sum of integers)/ number of integers

Datastructure: 
Input: array
Output: Integer

Given an array of integers
Sum all the integers
Divide the sum by number of elements in the array
Return the average
=end

def average(nums_ary)
  return nums_ary[0] if nums_ary.length == 1

  sum = 0
  num_of_elements = nums_ary.length

  nums_ary.each do |int|
    sum += int
  end

  sum.to_f / num_of_elements
end


puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts average([9]) == 9

def count_occur(str_ary)
  count_hash = {}
  str_ary.each do |current_ele|
    str_ary.each do |other_ele|
      if current_ele == other_ele
        count_hash[current_ele] += 1
      end
    end
  end
  count_hash
end