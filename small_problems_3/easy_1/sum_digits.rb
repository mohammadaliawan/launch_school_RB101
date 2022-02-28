=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

**Problem Requirements**
- Input: positive integer
- return: integer

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes on argument
- a positive integer
- return the sum of the digits of the given number

**Implicit**
-

**Special Terms**
-

**Questions**
- assuming given integer is base 10

**Data Structures**
- input: integer
- Output: integer
- Intermediate: array
- Storage:

**Algorithm**
- given a positive integer
- convert the integer to an array of digits
- sum the elements of the array
- return the sum

**Implementation details**
-


=end

def sum(num)
 num.to_s.chars.map(&:to_i).reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45