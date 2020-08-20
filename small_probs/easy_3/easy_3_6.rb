=begin
Easy_3 Q6:

The || operator returns a truthy value if either or both of its operands are truthy, a falsey value if both operands are falsey. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false


Problem: Given two numbers with the even? or odd? method invoked, write a program so that true is returned if EXACTLY one of its arguments is truthy:

Example:

Truth Table XOR
True True --> False
True False --> True
False True --> True
False False --> False

Traditional Truth Table
True && True --> true
True && False --> false
False && False --> True

Data Structure: Input: Numbers and even?/odd? method calls
Output: boolean

Algorithm:

Determine if the first object is truthy or false
  store the return value in variable - first_object

Determine if the second object is truthy or false
  Save the return value - second_object
  
Evaluate both return values 
  If both are true, return false
  If ONLY one is true, return TRUE
  If both are false, return False
  
=end

def find_boolean?(object)
  return true if object
  false
end

def xor?(first_object, second_object)
  first_object = find_boolean?(first_object)
  second_object = find_boolean?(second_object)
  if first_object && second_object
    false
  elsif first_object || second_object
    true
  else
    false
  end
end



xor?(find_boolean?(first_object), find_boolean?(second_object))


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
