=begin

Write a method which takes a grocery list (array) of fruits with quantities and converts 
it into an array of the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :array of fruits and their quantities
**Output** : array with each fruit occuring as many times as its quantity

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes an array of [fruit, nos.]
- returns an array of correct number of each fruit
  - array with each fruit occuring as many times as its quantity
- 


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: [["apples", 3], ["orange", 1], ["bananas", 2]]
- Output: ["apples", "apples", "apples", "orange", "bananas","bananas"]

[]
iterate through the given array
for each pair
  - append the fruit element quantity number of times to []

**Questions**
-


**Data Structures**
- input: array of arrays of strings and integers
- Output: array
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of [fruit, nos.]
- init an empty array [] # fruits
- For each element in the array
  - append fruit to [] quantity number of times
- return the fruits array


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def buy_fruit(fruits_quantity)
  fruits = []

  fruits_quantity.each do |current_fruit|
    current_fruit.last.times{|_| fruits << (current_fruit.first)}
  end
  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]