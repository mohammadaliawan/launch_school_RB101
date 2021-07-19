=begin

Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true
if the number's absolute value is odd. You may assume that the argument is a valid integer value.

Examples:

Copy Code
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

PEDAC

U:
input: an integer
output: a boolean

Explicit:
- Write a method
- takes one integer argument
- integer may be +, - or 0
- Returns a boolean
- true if the integer's absolute value is odd
  - an integer is odd if the remainder of int/2 == 0 (integer % 2)
- Assume the argument is a valid integer --> no integer validation

Implicit:

- 0 is considered even

Ds:
input: integer
output: boolean

Algo:

- given an integer
- if the remainder of the division operation is not zero
- then the integer is odd
- otherwise it is even

=end

def is_odd?(int)
  unless (int % 2 == 0)
    true
  else
    false
  end
end

def is_odd?(int)
  int.remainder(2) != 0
end

def is_odd?(int)
  int % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true