=begin
The || operator returns a truthy value if either or both of its operands are truthy.
If both operands are falsey, it returns a falsey value.
The && operator returns a truthy value if both of its operands are truthy,
and a falsey value if either operand is falsey.
This works great until you need only one of two conditions to be truthy,
the so-called exclusive or.

In this exercise, you will write a function named xor that takes two arguments,
and returns true if exactly one of its arguments is truthy, false otherwise.
Note that we are looking for a boolean result instead of a truthy/falsy value as
returned by || and &&.

Examples:

Copy Code
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method named xor
- takes two arguments
- returns true only if exactly one of its arguments is truthy
- false otherwise
- return a boolean object only

**Implicit**
- false, true == true
- true, false == true
- true, true == false
- false, false == false

**Special Terms**
-

**Questions**
-

- Input: any object type
- Output/return: boolean

**Data Structures**
- input: two objects of any type
- Output: boolean
- Intermediate:
- Storage:

**Algorithm**
- if argu1 is truthy and argu2 is truthy
    return false
  elsif argu1 is falsey and argu2 is falsey
    return false
  elsif argu1 is truthy and argu2 is falsey
    return true
  elsif argu1 is falsey and argu2 is truthy
    return true

**Implementation details**
- if (argu1 && argu2)
    return false
  elsif (!argu1 && argu2) || (argu1 && !argu2)
    return true
  else
    return false
    ebd

=end

def xor?(argu_1, argu_2)
  if argu_1 && argu_2
    return false
  elsif (!argu_1 && argu_2) || (argu_1 && !argu_2)
    return true
  else
    return false
  end
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false