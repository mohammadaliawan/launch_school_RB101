=begin
Write a method that takes one argument, an array containing integers,
and returns the average of all numbers in the array.
The array will never be empty and the numbers will always be positive integers.
Your result should also be an integer.

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

**Problem Requirements**
- Input: array of integers
- return: integer

**Rules / Boundaries (Check test cases)**

**Explicit**
- Define a method
- takes on argument
- argu: array of integers
- return the avg of all numbers in the array
- input will never be an []
- integers in the array will always be +
- return should also be an integer

**Implicit**
- always do integer division to get the average


**Special Terms**
- average = sum of all the integer elements divided by number of array elements

**Questions**
-

**Data Structures**
- input: array of integers
- Output: integer
- Intermediate:
- Storage:

**Algorithm**
- get the sum of all integers in the array
- divide the sum by number of elements in the array
- return the avg

**Implementation details**
- sum = 0
- iterate over the array
 - sum += current element
- avg = sum / ary_size
- return avg
=end

def average(ary)
  sum = 0
  ary.each do |num|
    sum = sum + num
  end

  sum / ary.size
end

def average(ary)
  sum = ary.reduce {|sum, num| sum + num}

  sum / ary.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40