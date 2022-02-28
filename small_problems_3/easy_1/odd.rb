=begin
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution

** Problem Requirements **

Input: integer, positive, negative, zero
return: boolean

**Restate**
- define a method
- takes one integer argument
- + - or 0
- return a boolean
- true if the absolute value of the given integer is odd
- false if the absolute value if even

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes one integer argument
- + - or 0
- return a boolean
- true if the absolute value of the given integer is odd
- false if the absolute value if even
- cant use even? or odd?

**Implicit**
- return false for 0

** Terms **
- absolute value : multiply the given number by -1 if number is negative
- odd: the number is not divisble by 2 so the remainder != 0

**Questions**


** Data Structures**

- input: integer
- Output:boolean
- Intermediate:
- Storage:


**Algorithm**
- Given a +, - or 0 integer
- if num is less than zero
  - multiply the number by -1
- if the remainder of num divided by 2 is not zero return true
- otherwise, return false


** Implementation details **
- given num
- if num < 0
  num *= -1
- if num % 2 != 0
    return true
  else
    return false
  end

=end

def is_odd?(num)
  num *= -1 if num < 0

  num.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true