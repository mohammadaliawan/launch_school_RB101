=begin
Write a method that takes an Array of numbers,
and returns an Array with the same number of elements,
and each element has the running total from the original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes an array of numbers as argument
- return a new array with ssam enumber of elements
- each element is the running total of itself and all the previous elements

**Implicit**
- only positive integers
- single element in given array => new array with the same number
- empty array => empty array

**Special Terms**
- running total : sum of all the previous elements and current element

**Questions**
-

- Input: array of positive integers
- return: array of running totals of the given array

**Data Structures**
- input: array
- Output: array
- Intermediate:
- Storage:

**Algorithm**
- given an array of positive integers
- create an empty array to store the running totals
- For each num in the given array
  - append current num to running_total_ary if its the first element of the array
  - find the sum of current element and the last element stored in the running_totals_ary
  - store the current sum the running total ary

**Implementation details**
- running_totals_ary = []
- iterate through the given array
  - append the current num to running totals ary if current index == 0
  - if index > 0
      - current_sum = current_num + running_totals_ary.last
      - append current_sum
- return running_totals_ary

=end

# def running_total(nums_ary)
#   nums_ary.each_with_object([]) do |current_num, ary|
#     if ary.empty?
#       ary << current_num
#     else
#       ary << current_num + ary.last
#     end
#   end
# end

def running_total(nums_ary)
  ary = []

  nums_ary.reduce(0) do |sum, num|
   ary << sum + num
   sum + num
  end
  ary
end

# def running_total(nums_ary)
#   nums_ary.map.with_index do |_,idx|
#     current_sum = 0
#     counter = 0
#     while counter <= idx
#       current_sum += nums_ary[counter]
#       counter += 1
#     end
#     current_sum
#   end
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []