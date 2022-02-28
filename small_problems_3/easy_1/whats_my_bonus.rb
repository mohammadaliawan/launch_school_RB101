=begin
Write a method that takes two arguments, a positive integer and a boolean,
and calculates the bonus for a given salary. If the boolean is true,
the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

**Problem Requirements**
- Input: integer (salary), a boolean
- return: integer

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- take two argu
- integer == salary, boolean
- 2nd argu: true == return the bonus which is half of the given int
- 2nd argu: false == return 0

**Implicit**
- assuming that an integer needs to be returned even if salary is odd

**Special Terms**
-

**Questions**
-

**Data Structures**
- input: integer, boolean
- Output: integer
- Intermediate:
- Storage:

**Algorithm**
- if boolean is true
    return given integer / 2
  else
    return 0


**Implementation details**
-


=end

def calculate_bonus(salary, bonus)
  if bonus
    salary / 2
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000