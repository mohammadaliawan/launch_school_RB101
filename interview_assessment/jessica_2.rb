# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. 
#Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors 
#other than 1 and itself.

=begin

------ PED:- 12 mins --------------

**The Problem -**
- Given an integer x between 1 and 10_000
- how many positive integers less than or equal to "x"
- are odd but not prim
- 1 is not prime
- A prime number is greater than 1 that has no positive divisors
    other than 1 and itself.

**Input** : a positive integer

**Output** : a positive integer, signifying
- the number of positive integers
- less or equal to given integer
- that are odd but not prime

**Explicit Requirements/Rules/Boundaries**
-- Given an integer x between 1 and 10_000

- return the number of
  - positive integers
  - less or equal to given integer
  - that are odd
  - but not prime
- A prime number is
    - greater than 1
    - that has no positive divisors
    - other than 1 and itself.

**Implicit Requirements/Rules/Boundaries**
- 1 is not prime


**Special Terms**
-


**Examples/Test Cases**
p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

- input: 15 --> 1,9,15
- Output: 3

- input: 48 --> 1,9,15,21,25,27,33,35,39,45
- output: 10


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate:
- Storage:array

--------------- A:- 18 to 20 mins------------

**Algorithm**
- Given a number between 1 and 10_000
- Find all the positive integers that are odd and less than or equal to given integer and greatet or equal to 1
- Find all the numbers that are not  prime numbers from the above list of odd numbers
- delete the prime numbers from the odd_numbers list
- return the final number of elements in the odd_not_prime list


**Implementation details**
- Find all the positive integers that are odd and less than or equal to given integer and greatet or equal to 1
    - iterate from 1 upto the given number (1..x)
        - select the odd the numbers #odd?

- Find all the prime numbers from the above list of odd numbers
    - iterate through the list of odd numbers
        - if a number_is_prime?
          store that number in an array of prime numbers
- is_prime?
    - iterate from 1 to given number
    -  if given_number % current_number == 0
          return true

-------------- C: 20 to 25 mins ------------------------

**CodeWithIntent****
=end

def find_odd_numbers(integer)
  (1..integer).select {|num| num.odd?}
end

def is_prime?(num)
  return false if num == 1
  !(2...num).any?{|current_num|num % current_num == 0}
end

def odd_not_prime(integer)
  odd_list = find_odd_numbers(integer)

  odd_prime_list = odd_list.select{|num| is_prime?(num)}

  odd_not_prime_list = odd_list - odd_prime_list

  odd_not_prime_list.size
end

p odd_not_prime(5) == 1
p odd_not_prime(10) == 2
p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20