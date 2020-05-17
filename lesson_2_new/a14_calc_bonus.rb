# a14_calc_bonus.rb
require "pry"

def prompt(message) # method for formatting the prompt and output it
  Kernel.puts("=> #{message}")
end

def valid_number?(number_str) # method for validating number
  number_str.to_i().to_s() == number_str || number_str.to_f.to_s == number_str
end

def valid_operator?(op) # method for validating operator
  %w(1 2 3 4).include?(op)
end

def performing_op_msg(op)
  case op
  when '1' then op_msg = "Adding the two numbers"
  when '2' then op_msg = "Subtracing the two numbers"
  when '3' then op_msg = "Multiplying the two numbers"
  when '4' then op_msg = "Dividing the two numbers"
  end

  return op_msg
end

def invalid_name?(user_name) # return true if name is invalid
  user_name.empty?() || /^ +$/.match(user_name)
end

def calculate(num1, num2, op)
  case op
  when '1'
    num1.to_f() + num2.to_f()
  when '2'
    num1.to_f() - num2.to_f()
  when '3'
    num1.to_f() * num2.to_f()
  when '4'
    num1.to_f() / num2.to_f()
  end
end

def retrieve_name # Get user name
  loop do
    user_name = Kernel.gets().chomp()
    return user_name unless invalid_name?(user_name)
    prompt("Please enter a valid name!")
  end
end

def retrieve_number(n)
  loop do
    prompt("What is the first number?") if n == 1
    prompt("What is the second number?") if n == 2
    number = Kernel.gets().chomp()

    if valid_number?(number)
      return number
    else
      prompt("That is not a valid number. Please input a valid number!")
    end
  end
end

def retrieve_op
  operator_prompt = <<-MSG
  What operation do you want to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()

    if valid_operator?(operator)
      return operator
    else
      prompt("Please input 1,2,3 or 4.")
    end
  end
end

def display_result(result)
  prompt("The result is #{result}")
end

def display_greeting
  prompt("Welcome to the Calculator! Enter your name:")
end

def display_op_msg(operator)
  prompt(performing_op_msg(operator))
end

def retrieve_play_again
  loop do
    prompt("Do you want to perform another calculation?(y/yes, n/no)")
    answer = Kernel.gets().chomp().downcase()
    return answer if %w(y yes n no).include?(answer)
    prompt("Please input y/yes or n/no only!")
  end
end

def play_again?(answer)
  %w(y yes).include?(answer)
end

display_greeting()

user_name = retrieve_name()

prompt("Hi, #{user_name}!")

loop do # main loop
  number1 = retrieve_number(1)
  number2 = retrieve_number(2)

  operator = retrieve_op()

  display_op_msg(operator)

  result = calculate(number1, number2, operator)

  display_result(result)

  answer = retrieve_play_again()

  break unless play_again?(answer)

  system('clear')
end

prompt("Goodbye!")
