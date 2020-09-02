running_total.rb

=begin

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

Examples:

Problem:
Given an array of numbers, 
return a second array of numbers in which the indexed element (for example, the value of index 3 in the second array is equal to the sum of the elements at indices 0, 1, 2, 3 in the first given array

Data Structure: Input: array of numbers
output: array of numbers

Algorithm:

[2,5,13] => [2,7,20] 

[2, 5 + 2, 13 + 5 + 2]

array[0]
array[0] + array[1]
array[0] + array[1] + array[2]

new_array[n] = array[n] + array[n-1]+ ...+ array[0]

new_array = []

first = [2,5,13]
init sum to zero

iteratue through first array
- sum = sum + num
- new_array << sum
ebd
***********
- Initialize the result array
  sum = 0
- Iterate through the given array:
  - sum = sum + num
   result_array << sum
   end
   
   breaking down two steps, finding the desired value
   figuring out how to store that value

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

  array_of_num.each_with_object([]) do |num,result_array|
    sum += num
    result_array << sum
 end

=end

def running_total(array)

  running_total_array = []

  array.reduce(0) do |memo, n|
    running_total_array << (memo + n)
    memo + n 
  end

  running_total_array
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []