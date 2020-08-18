=begin
Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.''

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103


Input: two positive integers
Output: the result of performing +,-,*,/,%,**

Rules: 
- Input from user will always be positive integers
- First number entered is the first number on which the mathematical operation is called.
--Perform the above math ops and display the result
- ==> first_number (op) second_number = result


DS: 
- user_input: convert that to an integer
- Output: string format

Algo 

- Get First number from the user
  - prompt the user for the first number
  - store the number as number_1
- Get second number from the user
  - prompt the user for the first number
  - store the number as number_1
- Perform each operation(+,-,*,/,%,**)
    Iterate through an array of operations [+,-,*,/,%,**]
      calculate the result of performing each op
        
- Display the result

=end

def prompt(str)
  puts "==> #{str}"
end

def get_number(str)
  prompt("Enter the #{str} number")
  number = gets.chomp.to_i
  if str == "second" && number == 0
    prompt("The second number cannot be zero. Please enter a positive integer")
  end

end

def calculate_result(number_1, number_2, operation)
  case operation
    when '+'
      number_1 + number_2
    when '-'
      number_1 - number_2
    when '*'
      number_1 * number_2
    when '/'
      number_1 / number_2
    when '%'
      number_1.remainder(number_2)
    when '**'
      number_1 ** number_2
  end
end

num_1 = get_number("first")

num_2 = get_number("second")

['+', '-', '*', '/', '%', '**'].each do |op|
  prompt("#{num_1} #{op} #{num_2} = #{calculate_result(num_1, num_2, op)} ")
end
