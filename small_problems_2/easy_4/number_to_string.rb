=begin
Write a method that takes a positive integer or zero, and converts it to a string representation.

Your method should do this the old-fashioned way and construct the string by analyzing and manipulating
the number

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes a positive integer or zero
- returns the string representation of the number
- make the string by analyzing and manipulating the number

**Implicit**
- input number is in decimal number format
- output is also in decimal number format

**Special Terms**
-

**Questions**
-

- Input:
- Output/return:

**Data Structures**
- input: integer
- Output: string
- Intermediate:
- Storage: hash for looking up equivalent digit chars for digits

**Algorithm**
- NUMBER_TO_STRING = [1 => '1', ...]
- if given number < 0, multiply the given num by -1 and store sign as '-'
  otherwise, store sign as '+`'
- find all digits in the given number => list of digit integers
- tranform the list digits to list of chars
- join the elements in the list of chars to a string
- prepend sign to resulting string

**Implementation details**
subprocess: find all digits in the given number => list of digit integers
  - given : num
  - init array of digits = []
  - while num > 0
    - remainder = num % 10
    - prepend remainder to array of digits
    - num = num / 10
    end

=end

NUMBER_TO_STRING = (0..9).to_a.zip(("0".."9").to_a).to_h

def find_digits(num)
  list_of_digits = []

  loop do
    num, remainder = num.divmod(10)
    list_of_digits.unshift(remainder)

    break if num == 0
  end
  list_of_digits
end

def signed_integer_to_string(num)
  return
  if num < 0
    num *= -1
    sign = '-'
  else
    sign = '+'
  end

  list_of_digits = find_digits(num)

  list_of_digits.map{|digit| NUMBER_TO_STRING[digit]}.join("").prepend(sign)
end


# p integer_to_string(4321) #== '4321'
# p integer_to_string(0) #== '0'
# p integer_to_string(5000) #== '5000'

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123)# == '-123'
p signed_integer_to_string(0) #== '0'
