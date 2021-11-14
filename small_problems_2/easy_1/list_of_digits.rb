=begin
Write a method that takes one argument, a positive integer, and
returns a list of the digits in the number.

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

** Problem Requirements **

Input: positive integer
return: array of digits in the number

**Restate**
- define a method
- takes one argument
- argument is a positive integer
- returns an array of digits in the given number

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes one argument
- argument is a positive integer
- returns an array of digits in the given number

**Implicit**
- array should contain integers
- if its a single digit number then return the a single element array with that number

** Terms **
list == array

**Questions**
- input integer will be a base 10 number
-

** Data Structures**

- input:positive integer
- Output: array of integers
- Intermediate: string
- Storage:


**Algorithm**
12345 -> "12345" -> ['1', '2', '3', '4', '5'] -> transform array of strings to an array of integers

- given a positive base 10 integer
- convert the integer to an array of string digits
- transform array of strings to an array of integers
- return the array

** Implementation details **


=end

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

# def digit_list(num)
#   digits = []

#   while num > 0
#     num, rem = num.divmod(10)
#     digits.prepend(rem)
#   end

#   digits
# end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true