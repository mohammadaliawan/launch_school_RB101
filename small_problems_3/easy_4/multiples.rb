=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number,
and then computes the sum of those multiples.
For instance, if the supplied number is 20,
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

Copy Code
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- find all multiples of 3 and 5 (one or the other)
- between 1 and n (argu)
- then find the sum of all multiples between 1 and n
- return the sum
- n will be greater than 1

**Implicit**
-

**Special Terms**
- multiples: number is evenly divisible by 3 or 5

**Questions**
-

- Input: integer greater than 1
- return: sum of all multiples of 3 and 5 between 1 and given number

**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage: array

**Algorithm**
- Given an integer greater than 1
- find all the multiples of 3 and 5 between 1 and given number
- find the sum of all those multiples
- return the sum

**Implementation details**
- subprocess: find all the multiples of 3 and 5 between 1 and given number
  - create an empty array # mutiples
  - iterate from 1 to given number num
    - if current number % 3 == 0 or current number % 5 == 0
      - append current current to multiples array


- subprocess: find the sum of all those multiples
  - given an array of multiples
    - #reduce or #sum to get the sum of all elements of the array
=end

def find_multiples(given_num)
  (1..given_num).select do |current_num|
    current_num % 3 == 0 || current_num % 5 == 0
  end
end

def multisum(given_num)
  find_multiples(given_num).reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168