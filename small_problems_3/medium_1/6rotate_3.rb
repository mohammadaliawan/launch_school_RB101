=begin

If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to 321759. 
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument,
and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :Integer
**Output** : Maximum rotated integer

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a positive integer as argument
- returns the maximum rotation of the number
  - First rotate the complete number
  - then rotate the last n - 1 digits of above number, n is the number of digits
  - then rotate the last n - 2 digits of the resulting number, 
  - keep going until you reach the last two digits
- no need to handle multiple zeros
- leading zeros get dropped


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 735291
- Output: 321579

735291
735291, 6 -> 352917
352917, 5 -> 329175
329175, 4 -> 321759
321759, 3 -> 321597
321597, 2 -> 321579

**Questions**


**Data Structures**
- input: integer
- Output: integer
- Intermediate: string
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a positive integer
- init current_number to given number
- For n from (number of digits in given number) to 2
  - rotate the last n digits of the current number
  - assign current number to the rotated number


**Implementation details**
- subprocess: rotate the last n digits of the current number

1. Given a positive integer and a number n
2. convert the integer to a string
3. extract a substring of last n chars (mutate)
  - string.slice!(-n..-1)
4. rotate the substring
    - convert the string to an array of chars
    - subprocess - rotate array
      - extract a subarray from index 1 to last index
      - append the first char to the subarray 
      - return the new array
    - join the array back to a string
5. concantenate the rotated substring with the remaining string in step 3
6. convert to the rotated string to an integer


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def rotate_string(str)
  chars_ary = str.chars
  chars_ary[1..-1].push(chars_ary[0]).join('')
end

def rotate_rightmost_digits(number, n)
  number_str = number.to_s

  last_n_digits = number_str.slice!(-n..-1)

  rotated_substring = rotate_string(last_n_digits)

  rotated_string = number_str + rotated_substring

  rotated_string.to_i
end

def max_rotation(int)
  current_number = int

  number_of_digits = current_number.digits.size

  counter = number_of_digits

  loop do
    current_number = rotate_rightmost_digits(current_number, counter)
    counter -= 1

    break if counter < 2 
  end

  current_number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845