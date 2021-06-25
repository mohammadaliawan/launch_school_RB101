# a14_calc_bonus.rb
require 'yaml'

LANGUAGE = 'en'

MESSAGES = YAML.load_file('calculator_messages.yml')

def messages(key)
  MESSAGES[LANGUAGE][key]
end

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
  when '1' then op_msg = messages("add")
  when '2' then op_msg = messages("subtract")
  when '3' then op_msg = messages("multiply")
  when '4' then op_msg = messages("divide")
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
    prompt(messages("invalid_name"))
  end
end

def retrieve_number(n)
  loop do
    prompt(messages("number_1")) if n == 1
    prompt(messages("number_2")) if n == 2
    number = Kernel.gets().chomp()

    if valid_number?(number)
      return number
    else
      prompt(messages("invalid_number"))
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
      prompt(messages("invalid_operator"))
    end
  end
end

def display_result(result)
  prompt("The result is #{result}")
end

def display_greeting
  prompt(messages("welcome"))
end

def display_op_msg(operator)
  prompt(performing_op_msg(operator))
end

def perform_another_calc
  loop do
    prompt(messages("another_calc"))
    answer = Kernel.gets().chomp().downcase()
    return answer if %w(y yes n no).include?(answer)
    prompt(messages("invalid_ans"))
  end
end

def play_again?(answer)
  %w(y yes).include?(answer)
end

display_greeting()

user_name = retrieve_name()

prompt("Hi, #{user_name}!")

loop do # main loop
  number1 = retrieve_number(1) # Get first number
  number2 = retrieve_number(2) # Get second number

  operator = retrieve_op() # Get operator

  display_op_msg(operator) # Display the Operational Msg

  result = calculate(number1, number2, operator) # find result

  display_result(result) # Display Result

  answer = perform_another_calc() # Get Perform another calculation

  break unless play_again?(answer)
  system('clear')
end

prompt(messages("goodbye"))
