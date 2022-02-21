# ---------------------problem 3
=begin
-----------------------INSTRUCTIONS--------------------------------------
# Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!

# Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number.

# The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.

--------------------------PROBLEM----------------------------------------
Questions:
Input: 2 Integers, representing a range of numbers
Output: 1 Array of arrays, each sub_array will contain; 
          -the numbers whose squared divisors is a square
          -sum of the squared divisors

---------------------------RULES-----------------------------------------
Explicit:
  -Given integers will be positive
  -find all integers between given integers whose sum of squared divisors is a square
    -find all divisors of a number
    -find the sum of all divisors squared
    -if the sum if a perfect square --> include array of number and sum of squared divisors
Implicit:
  -inputs will not be empty
  -will always be a integer (whole number)

--------------------------EXAMPLES---------------------------------------
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
42..250
42 divisors --> 1, 2, 3, 6, 7, 14, 21, 42
squares of divisors --> 1, 4, 9, 36, 49, 196, 441, 1764
sum of squared divisors --> 2500
2500 if a square of 50! (50 * 50 == 2500)
returns ==> [42, 2500]

----------------------------ALGO-----------------------------------------
==> For each integer within the range of integers given as arguments, check to see if all of the divisors of the integers, when squared and added together is the product of a square. 

-- method --> list_squared(integer1, integer2) --> 1 Array of Arrays
  -intialize 'squared' to an empty array
  -iterate through the range of numbers given as arguments
    -find divisors of the current integer (divisors)
    -if divisors squared and added together form the product of a square
      -push sub_array to 'squared'
  -return 'squared'
    
-- method --> find_divisors(integer) --> array
  -initialize 'divisors' as empty array
  -iterate through all numbers between 1 and the given integer
    -initialize 'square' to current number can be divided evenly into given number
    -if 'square' is truthy
      -push current element and square to 'divisors'
  -return 'divisors'
  
-- method --> square_product(array) --> integer or nil
  -transform all elements of given array to themselves squared
  -find sum of all sqaured divisors
  -if sum is a product of aperfect square
    -return square
  -otherwise
    -return nil

=end

# def find_divisors(num)
#   divisors = []
#   1.upto(num) do |current_num|
#     divisors << current_num if num % current_num == 0
#   end
#   divisors
# end

# def square_product(array)
#   squared = array.map { |num| num * num }.sum
#   if Math.sqrt(squared) % 1 == 0
#     squared
#   end
# end

# def list_squared(start_num, end_num)
#   squared = []
#   start_num.upto(end_num) do |num|
#     divisors = find_divisors(num)
#     if square_product(divisors)
#       squared << [num, square_product(divisors)]
#     end
#   end
#   squared
# end

# p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
# p list_squared(42, 250) == [[42, 2500], [246, 84100]]
# p list_squared(250, 500) == [[287, 84100]]