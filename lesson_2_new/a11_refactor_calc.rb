def prompt(message) # method for formatting the prompt and output it
  Kernel.puts("=> #{message}")
end

def valid_number?(number_str) # method for validating number
  number_str.to_i() != 0
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
  user_name.empty?()
end

def find_result(num1, num2, op)
  case op
  when '1'
    num1.to_i() + num2.to_i()
  when '2'
    num1.to_i() - num2.to_i()
  when '3'
    num1.to_i() * num2.to_i()
  when '4'
    num1.to_f() / num2.to_f()
  end
end

prompt("Welcome to the Calculator! Enter your name:") # greeting

user_name = ""
loop do # Get user name
  user_name = Kernel.gets().chomp()
  break unless invalid_name?(user_name)
  prompt("Please enter a valid name")
end

prompt("Hi, #{user_name}!")

loop do # main loop
  number1 = ""
  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("That is not a valid number. Please input a valid number!")
    end # Getting First number loop
  end

  number2 = ""
  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("That is not a valid number. Please input a valid number!")
    end # Getting  the Second number loop
  end

  operator_prompt = <<-MSG
  What operation do you want to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ""
  loop do # Getting the operator loop
    operator = Kernel.gets().chomp()

    if valid_operator?(operator)
      break
    else
      prompt("Please input 1,2,3 or 4.")
    end
  end

  prompt(performing_op_msg(operator))

  result = find_result(number1, number2, operator)

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation?(y for yes)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?("y")
  system('clear')
end

prompt("Goodbye!")
