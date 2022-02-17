=begin

Write a method that determines the mean (average) of the three scores passed to it,
  and returns the letter value associated with that grade.

Numerical Score Letter  Grade
90 <= score <= 100  'A'
80 <= score < 90  'B'
70 <= score < 80  'C'
60 <= score < 70  'D'
0 <= score < 60 'F'

Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : three integers
**Output** : string, letter value for that grade

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes 3 arguments, integers
- find the mean of the 3 scores
- find the grade associated with that mean score
- return the letter grade for that mean score
- values between 0 adn 100
- no -tive values, or greater than 100



**Implicit Requirements/Rules/Boundaries**
- mean to be calculated as integer
- integer division


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 95, 90, 93
- Output: 'A'


**Questions**
-


**Data Structures**
- input: integers
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given three integers
- Find the avg of the three # using integer division
- Find the letter grade for that avg
- return the grade as a string


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def get_grade(score_1, score_2, score_3)
  mean = (score_1 + score_2 + score_3) / 3

  case mean
  when (90..)
    'A'
  when 80...90
    'B'
  when 70...80
    'C'
  when 60...70
    'D'
  when 0...60
    'F'
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"