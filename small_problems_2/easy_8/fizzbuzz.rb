=begin

Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : two numbers, starting number and ending number
**Output** : all numbers between two numbers 

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes two numbers as arguments # integers
- prints all the numbers between the two numbers 
  except if number is divisible by 3
    print "fizz"
    if number is divisble by 5
    print "buzz"
    if the number is divisible by both
    print "fizzbuzz"



**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 1, 15
- Output: 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

iterate through the number range 1..15
for each number check conditions
  if number % 3 == 0 && number % 5 == 0
    print fizzbuzz
  if number 


**Questions**
-


**Data Structures**
- input: integers
- Output: strings
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given two numbers
- Iterate from starting number to end number
  for each number 
    check if divisible by 3 and 5
      print fizzbuzz
    if divisible by 3 
      print fizz
    if divisible by 5
      print buzz
    if none of the above conditions are true
      print the number



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def fizzbuzz(start, end_num)
  (start..end_num).each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15)

