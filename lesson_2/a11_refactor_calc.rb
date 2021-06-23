require "yaml"

OPERATOR_PROMPT = <<~MSG
    Enter the Operation you want to be perform:
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

def prompt(string)
  p("=> #{string}")
end

def op_to_msg(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

def float?(number)
  number.to_f().to_s() == number
end

def integer?(number)
  number.to_i().to_s() == number
end

def number?(num)
  integer?(num) || float?(num)
end

def alphabet?(char)
  (("A".."Z").to_a + ("a".."z").to_a + [" "]).include?(char)
end

def non_alpha_chars?(name)
  name.chars.each do |char|
    return true unless alphabet?(char)
  end
  false
end

def invalid_name?(name)
  name.empty? || /^ +$/.match(name) || non_alpha_chars?(name)
end

def retrieve_name
  loop do
    name = Kernel.gets().chomp()

    return name unless invalid_name?(name)
    prompt("Make sure to enter a valid name!")
  end
end

def retrieve_number(num)
  loop do
    prompt("Enter the first number:") if num == 1
    prompt("Enter the second number:") if num == 2
    number = Kernel.gets().chomp()

    return number if number?(number)
    prompt("ERROR!! That's not a valid integer!")
  end
end

def retrieve_operator
  loop do
    operation = Kernel.gets().chomp()

    return operation if %w(1 2 3 4).include?(operation)
    prompt("Must Enter 1,2,3 or 4!")
  end
end

def calculate_result(number1, number2, operation)
  case operation
  when '1'
    number1.to_f() + number2.to_f()
  when '2'
    number1.to_f() - number2.to_f()
  when '3'
    number1.to_f() * number2.to_f()
  when '4'
    number1.to_f() / number2.to_f()
  end
end

def valid_answer?(ans)
  %w(y yes n no).include?(ans)
end

def retrieve_play_again
  prompt("Do you want to do another calculation? Enter y/yes or n/no")
  loop do
    answer = gets.chomp.downcase

    return answer if valid_answer?(answer)
    prompt("Invalid Answer! Enter y/yes or n/no only")
  end
end

def again?(answer)
  %w(y yes).include?(answer)
end

def greet_user
  prompt("Welcome to the Calculator! Enter your name:")

  name = retrieve_name()

  prompt("Hello #{name}!")
end

greet_user

loop do # main loop
  number1 = retrieve_number(1)

  number2 = retrieve_number(2)

  prompt(OPERATOR_PROMPT)

  operation = retrieve_operator

  prompt("#{op_to_msg(operation)} the two numbers...")

  result = calculate_result(number1, number2, operation)

  prompt("The result is #{result}")

  answer = retrieve_play_again

  break unless again?(answer)
end

prompt('Thank you for using the calculator! Goodbye../\\..')
