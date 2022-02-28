=begin
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all numbers
between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

=begin

**Problem Requirements**
- Input: integer > 0
- Output:string "The _ of the integers between 1 and _ is _.""

**Rules / Boundaries (Check test cases)**

**Explicit**
- write a program
- asks the user to enter an integer > 0
- not zero
- then ask user to enter s if sum, and p if product
- of all numbers from 1 to int

**Implicit**
- for prompt use >>
- s for sum
- p for product
- output string "The _ of the integers between 1 and _ is _.""

**Special Terms**
-

**Questions**
- need to validate the entered integer? no
- need to validate the computation? no
- output any error msgs if wrong input? no
- is the entered integer included? yes

**Data Structures**
- input: integer
- Output: string
- Intermediate:
- Storage:

**Algorithm**
- def a method that
- gets an integer from the user > 0
- gets the computation to be performed 's' or 'p'
- perform the calc
- if input is 's'
    calc the sum from 1..int
- otherwise
    calc the product 1..int
- output string : "The _ of the integers between 1 and _ is _.""

**Implementation details**
-

=end

def print_sum_or_product
  puts ">> Please enter an integer greater than 0:"
  int = gets.chomp.to_i

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase

  case operation
    when 's'
      sum = (1..int).reduce(:+)
      puts "The sum of the integers between 1 and #{int} is #{sum}."
    when 'p'
      product = (1..int).reduce(:*)
      puts "The product of the integers between 1 and #{int} is #{product}."
  end
end

print_sum_or_product