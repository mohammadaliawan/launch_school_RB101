# Understanding the problem
# A method that takes:
# Inputs: one argument, integer, positive, negative, zero, assume valid int
# Output: Return the `true` object if abs value of number is odd,
#         Return the `false` object if abs value of number is even
# rule: Dont use #odd? or #even?
# definition of odd: a number is odd if it is not divisible by 2 i.e the remainder
# of number % 2 != 0 or number % 2 == 1

def is_odd?(int)
  int % 2 != 0
end

p(is_odd?(2) == false)
p(is_odd?(5) == true)
p(is_odd?(-5) == true)
p(is_odd?(0) == false)
p(is_odd?(-4) == false)