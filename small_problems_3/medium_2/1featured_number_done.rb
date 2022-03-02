=begin

A featured number (something unique to this exercise) is an odd number 
that is a multiple of 7, and whose digits occur exactly once each. So, 
for example, 49 is a featured number, but 98 is not (it is not odd), 
97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, 
and returns the next featured number that is greater than the 
argument. Return an error message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
0123456789
------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer
**Output** : integer that is a featured number greater than argument

**Explicit Requirements/Rules/Boundaries**
- featured number: odd and multiple of 7 and all digits are non repeating
- write a method that takes an integer
- returns the next greater featured number 
- return an error msg if there is no next featured number

**Implicit Requirements/Rules/Boundaries**
- There is no possible number greater than 9_999_999_999 which would be a featured number
- because there are 10 digits in decimal numbering system so any number greater than this number would have 
repeating digits


**Special Terms**
-


**Examples/Test Cases**
featured(1029) == 1043

1030, 1031, 1032, 1033, 1034, 1035


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an integer
- Find the next greater number that is odd, multiple of 7 and has non repeating digits
- The number returned should be less than 9_999_999_999


**Implementation details**\
-Iterate from given number + 1 to 9_999_999_999
  - if the current number is odd && (num%7) == 0 && nonrepeating_digits
      return current_number
- return error message

subprocess - nonrepeating_digits
  - convert the number to a string
  - %w(0 1 2 3 4 5 6 7 8 9)
  - For each char in the array
    - check that each char count in the string is less than 2
    - return true
    -otherwise return false



-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def non_repeating_digits?(num)
  num_str = num.to_s

  DIGITS.all?{|digit| num_str.count(digit) < 2}
end

def featured(int)
  (int + 1).upto(9_999_999_999) do |num|
    if num.odd? && (num % 7 == 0) && non_repeating_digits?(num)
      return num
    end
  end
  "There is no possible number that fulfills those requirements"
end

  # def featured(number)
  #   number += 1
  #   number += 1 until number.odd? && number % 7 == 0

  #   loop do
  #     number_chars = number.to_s.split('')
  #     return number if number_chars.uniq == number_chars
  #     number += 14
  #     break if number >= 9_876_543_210
  #   end
  #   'There is no possible number that fulfills those requirements.'
  # end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements




# Hide Solution & Discussion
  # Solution
  # Copy Code
  # def featured(number)
  #   number += 1
  #   number += 1 until number.odd? && number % 7 == 0

  #   loop do
  #     number_chars = number.to_s.split('')
  #     return number if number_chars.uniq == number_chars
  #     number += 14
  #     break if number >= 9_876_543_210
  #   end

  #   'There is no possible number that fulfills those requirements.'
  # end
  # Discussion
  # For this exercise, a good way to start is to first make sure we meet the conditions of a 
  #{}"featured number". In this case, those are: odd, multiple of 7, and no duplicate digits.

  # We make it so that we only have to increment by 14. So, that takes care of the second 
  #condition. We also make sure that the number we start at for incrementation is an odd multiple of 7. 
  #If we set it up like this, then every time we add 14 we'll consistently get the subsequent 
  #odd multiple of 7.

  # As for checking if all digits are unique, we use a string array for that. This array 
  #contains the individual digits of number in string format. uniq is called on that array 
  #and if it is the same as the original array, then we know that all the digits in our number are unique.

  # It is also important to return an error message if there is no "featured number" 
  #that occurs after the number that is passed in. That is handled by checking the highest 
  #possible unique value, and then breaking out of our loop if number is greater than that value.