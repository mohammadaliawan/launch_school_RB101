=begin

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

Examples:

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


## PEDAC

### U:
- input: positive integer
- output: list of digits in the number

#### Explicit:
- write a method
- takes one argument , + integer
- return a list of digits in the number

#### Implicit:
- the elements of the arrray will be integers not strings
- Return the list as an array
- if onlt one digit return that digit in an array
- the digits should be in the same order as they appear in the original number
- if digits are repeated, they should appear in the list the same number of times in the same order

### DS:

input: integer(+)
output: array of integers

### Algo:

- given a positive integer
- convert the integer to a string
- split the string into a list of characters
- transform the list of characters into a list of digits(integers)
=end

# def digit_list(int)
#   string_of_digits = int.to_s

#   list_of_characters = string_of_digits.split("")

#   list_of_characters.map { |char| char.to_i}

#   # int.to_s.split("").map {|char| char.to_i} one liner
# end

def digit_list(int)
  digits = []

  loop do
    int, rem = int.divmod(10)
    digits.prepend(rem)

    break if int == 0
  end
  digits
end


p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true

