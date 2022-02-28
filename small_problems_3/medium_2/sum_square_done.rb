# Sum Square - Square Sum
# Write a method that computes the difference between the square of the sum of the 
# first n positive integers and the sum of the squares of the first n positive integers.

# Examples:

# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# sum_square_difference(10) == 2640
# sum_square_difference(1) == 0
# sum_square_difference(100) == 25164150

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**

- sum_1 = compute the sum of first n positive integers = *sum of integers from 1 to n) ** 2
- sum_2 = square of each integer from 1 to n then sum those squares
- (sum of the first n positive integers)**2 - (sum of the squares of the first n positive integers)
- return sum_1**2 - sum_2

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
# sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)


**Questions**
-


**Data Structures**
- input: integer
- Output: integer
- Intermediate: 
- Storage: array 

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an integer n
- Find the first n positive integers - 1 to n
- sum_1 = Find the sum of the 1 to n integers
- square of sum_1 = Find the square of sum_1
- sum_2 = Find the sum of the squares of integers from 1 to n
- FInd the difference of
- square of sum_1 - sum_2


**Implementation details**\
-- 


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def sum_square_difference(int)
  first_n_ints = (1..int).to_a

  sum_1 = first_n_ints.sum

  sum_2 = first_n_ints.map{|int| int**2}.sum

  (sum_1**2) - sum_2
end

p sum_square_difference(3) #== 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150


# Hide Solution & Discussion
  # Solution
  # Copy Code
  # def sum_square_difference(n)
  #   sum = 0
  #   sum_of_squares = 0

  #   1.upto(n) do |value|
  #     sum += value
  #     sum_of_squares += value**2
  #   end

  #   sum**2 - sum_of_squares
  # end
  # Discussion
  # The hardest part of this exercise is just figuring out what is meant by square of the sum and sum of the squares. 
  # Our first example demonstrates this clearly with a comment that shows how we arrive at the answer.

  # The primary solution shows all of the details of this operation; we loop through all of the integers 
  # between 1 and n, and compute the sum and sum of squares as we go. At the end, 
  # we subtract the sum of the squares from the square of the sum.