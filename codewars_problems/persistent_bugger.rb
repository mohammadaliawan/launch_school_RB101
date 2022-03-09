=begin

Write a function, persistence, that takes in a positive parameter num and returns 
its multiplicative persistence, which is the number of times you must multiply the
digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4

------ PED:- 0 MIN to 12 MIN --------------


**Input** : positive integer
**Output** : integer

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a positive integer as argument
- return its multiplicative persistence
- multiplicative persistence : the number of times the digits in num or its multiplication result
   must be multiplied to get a single digit number


**Implicit Requirements/Rules/Boundaries**
- single digit input number returns 0
- 


**Special Terms**
-


**Examples/Test Cases**
p persistence(39) == 3
3*9 = 27 -> 2*7 = 14 -> 4*1 = 4
29 -> [9, 2] -> 27 -> [7, 2] -> 14 -> [4, 1] -> 4
p persistence(4) == 0

p persistence(25) == 2


p persistence(999) == 4


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a postive integer
- init counter to 0
- Execute the following steps until number of digits in result is less than 2
  - find the digits in the current number
  - if number of digits is two or more
     - increment counter by 1
     - multiply the digits to get the result
    else
      - return counter


  - 


**Implementation details**\
- Given a positive integer #number 39
- INIT counter to 0 #3
- WHILE number of digits in current_number >= 2
  - find the digits in current_number [1,4]
  - current_number = multiply digits in current_number 4
  - increment counter by 1
- END
- RETURN COUNTER

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def persistence(num)
  counter = 0
  current_num = num
  while current_num.digits.size >= 2
   current_num = current_num.digits.reduce(:*)
   counter += 1
  end
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4