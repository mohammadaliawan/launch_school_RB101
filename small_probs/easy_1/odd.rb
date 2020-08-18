=begin
Write a method that takes one integer argument, 
which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
you may assume that the argument is a valid integer value.

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

# Notes

Write a method that has:

Input: one Integer(positive, negative or zero)
Output: Boolean, true if abs value of integer is odd

Requirements:
- Explicit: 
-  Integer can be positive, negative or zero
-  Return true if abs value of integer is odd
-  Argument will always be a valid integer value
-  Dont use odd? or even? methods in your solution
- Implicit Requirements:
    If abs of integer is even return false? (ask question)

Data Structures:

Input: Integer
Output: Boolean, True or False

Algorithm:

Given a positive, negative or zero integer
  Return true if the abs value of integer is odd
    Calculate the absolute value of Integer
      Integer#abs
    Check if odd
      number is odd if remainder of num / 2 is not equal to 0
    Return true if odd
=end

def is_odd?(int)
  abs_num = int.abs

  abs_num.remainder(2) == 1

end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
