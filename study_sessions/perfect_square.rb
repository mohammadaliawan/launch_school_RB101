=begin

Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square! Given two positive integers we want to find all integers between them whose sum of squared divisors is itself a square. 42 is such a number. The result will be an array of arrays, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.


Problem:
- Given two integers
- Return a nested array where each subarray contains the number whose squared divisors (between the two given numbers) is a square and the sum of the squared divisors

Rules:

Data structures:
- Two integers in
- Nested array of integers out

Algorithm:
- 1 up to 42
 - for each number we find all of its divisors ()
 - square each divisor (2)
 - sum the squared divisors (2)
 - the sum is square itself

- create a method that finds all the divisors of each number within the range of given numbers
 - initialise divisors and assign it to an empty hash
 - iterate over the range of two given numbers
  - iterate from 1 up to number
   - if number divided by current integer leaves 0
    - sub_hsh already includes number
    - append current integer to k/v pair
    - if it doesn't include it
    - assign a new k/v pair number and [divisor]
- return divisors

[{1 => [1]}, ...{42 => [1, 3, ...]}]

- create a method that takes an array, squares each element and returns the sum

- create a method that takes a number and checks if number is perfect square

- create a method that iterates over the hash values and checks if sum of divisors is a perfect square
 - results and assign to empty array
 - append [key and then sum] if perfect squares
-return results

=end

# def counts(start_num, end_num)
#   divisors = Hash.new{|hash,key| hash[key] = []}
#   (start_num..end_num).each do |num|
#     (1..num).each do |int|
#       if num % int == 0
#         divisors[num] << int
#       end
#     end
#   end
  
#   divisors
# end

# def sum_of_squares(arr)
#   arr.map{ |int| int ** 2 }.sum
# end

# def perfect_square(arr)
#   num = sum_of_squares(arr)
#   (1..num).each do |int|
#     return true if int * int == num
#   end
#   false
# end

# def solve(start_num, end_num)
#   divisors = counts(start_num, end_num)
#   results = []
  
#   divisors.each do |k, v|
#     if perfect_square(v)
#       results << [k, sum_of_squares(v)]
#     end
#   end
  
#   results
# end

def retrieve_divisors(num)
  divisors = []
  1.upto(num).each do |current_num|
    divisors << current_num if (num % current_num == 0)
  end
  divisors
end

def sum_of_squared_nums(numbers)
  numbers.map { |num| num * num}.reduce(:+)
end

def find_root(num)
  1.upto(num).each do |current_num|
    return current_num if current_num * current_num == num
    break if current_num * current_num > num
  end
end

def solve(start_num, end_num)
  list = []
  start_num.upto(end_num).each do |current_num|
    divisors = retrieve_divisors(current_num)
    sum = sum_of_squared_nums(divisors)
    root = find_root(sum)
    list << [current_num, sum] if root
  end
  list
end