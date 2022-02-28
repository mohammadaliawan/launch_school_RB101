=begin
Write a method that displays a 4-pointed diamond in an n x n grid, 
where n is an odd integer that is supplied as an argument to the method. 
You may assume that the argument will always be an odd integer.

diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : odd integer
**Output** :4-pointed diamond in an nxn grid

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an odd integer as argument
- displays a 4-pointed diamond in an nxn grid
- 


**Implicit Requirements/Rules/Boundaries**




**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input:
- Output:

- if n = 1
  print 1 diamond
- if n = 3
  string length = 3
  print 3 strings
  print first string with one * delimted by 2 " " on either side
  print second string with *** no spaces
  print third string with * string delimted by 2 " " on either side

  parameters 
    - number of strings = n
    - string length from n/2 to n to n/2
    - number of * = from 1 to n to 1
    - number of spaces in each string = n - number of *

**Questions**
-


**Data Structures**
- input: integer
- Output: strings
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an odd integer n
- starting length of string n/2 rouned up
- For odd integers from 1 to n
  - print a string with current number of * and string_length, right justified
  - go to the next line
  - increase string length by 1

- starting length of string  n - 1
- For odd integers from n - 2 to 1
  - print a string with current number of * and starting string length, right justified
  - go to next line
  - decrement string length by 1



**Implementation details**
- n/2.0.ceil
- ("*"*current_number) right justified


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def diamond(n)
  string_length = (n/2.0).ceil
  current_number = 1
  loop do
    current_string = ("*"*current_number).rjust(string_length, " ")
    puts current_string
    string_length += 1
    current_number += 2
    break if current_number > n
  end

  string_length = n - 1
  current_number = n - 2
  loop do
    current_string = ("*"*current_number).rjust(string_length, " ")
    puts current_string
    string_length -= 1
    current_number -= 2
    break if current_number < 1
  end
end

diamond(3)
diamond(9)