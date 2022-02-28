=begin
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.

Teddy is 69 years old!



**Problem Requirements**
- Input: none
- Output: string "Teddy is 69 years old!""

**Rules / Boundaries (Check test cases)**

**Explicit**
- generate a random number between 20 and 200
- Program should output the string "Teddy is #{random_age}"

**Implicit**
- random number generated shall be an integer


**Special Terms**
-

**Questions**
- are 20 and 200 included? yes

**Data Structures**
- input: none
- Output: string
- Intermediate:
- Storage:

**Algorithm**
- generate a random number between 20 and 200
- print the string Teddy is __ years old! with the age interpolated

**Implementation details**
-

=end

def print_age
  puts ">> Please enter your name:"
  name = gets.chomp

  name = "Teddy" if name == ""

  random_age = rand(20..200)

  puts ">> #{name} is #{random_age} years old!"
end

print_age

