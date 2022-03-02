=begin

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : integer
**Output** : integer with last n digits rotated

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a number as argument, and a number n > 0
- rotates the right most n digits
  - for the last n digits, 
    - remove the left most digit
    - append to the end of the given number


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 735291, 3
- Output: 735912

"735291" -> [7 3 5 2 9 1] -> [7 3 5], [2 9 1] -> rotate_array([2 9 1]) -> [9 1 2] -> 
-> [7 3 5] + [9 1 2] -> [7 3 5 2 9 1] -> "735291" -> 735291

"735291" -> "735", "291" -> rotate_string("291") -> "912"
"735" + "912" -> "735912" -> 735912

**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate: string
- Storage: 

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
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


**Implementation details**
-


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


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
