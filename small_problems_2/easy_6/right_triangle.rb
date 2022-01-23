=begin
Write a method that takes a positive integer, n, as an argument,
and displays a right triangle whose sides each have n stars.
The hypotenuse of the triangle (the diagonal side in the images below) should have one
end at the lower-left of the triangle, and the other end at the upper-right.

Examples:

Copy Code
triangle(5)

    *
   **
  ***
 ****
*****
Copy Code
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

------ PED:- 0 MIN to 12 MIN --------------


**Input** : +tive integer
**Output** : print out a right triangle of stars, with two sides equal

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an integer n as an argument and outputs a right triangle of stars
- each side has n stars
- hypotenuse has one end at the lowerleft corner and
- one end at the top right corner


**Implicit Requirements/Rules/Boundaries**
- each side has n stars:
    - verticle side has n stars: print out n number of lines of stars
    - horizontal side has n stars: the last line printed should contain n stars
- print n lines
- each line having n chars
- first line having 1 star and 8 spaces
- seocnd line having 2 start and 7 spaces
- start += 1, spaces -= 1 Total lenght = n

**Special Terms**
-


**Examples/Test Cases**
- input: 5
- Output:
    *
   **
  ***
 ****
*****
("*"*counter).rjust(n, " ")
counter 1 to n

**Questions**
-


**Data Structures**
- input: integer
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an integer n
- Print out n strings of n length on seperate lines
 - each string containing stars ranging from 1 to n
 - each string should be right justified by " " and length should be n



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****

=end

def triangle(n)
  counter = n

  loop do
    p ("*"*counter).rjust(n, " ")
    counter -= 1
    break if counter < 0
  end
end

p triangle(5)
p triangle(9)

