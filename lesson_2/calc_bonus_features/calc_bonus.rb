require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

loop do
  Kernel.puts(">> For Espaniol type 'es', For English type 'en'")
  LANGUAGE = Kernel.gets().chomp()
  break if LANGUAGE == 'en' || LANGUAGE == 'es'
  Kernel.puts(">> Invalid answer! enter 'es' for spanish or 'en' for English")
end

def valid_name?(name)
  unless /\d/ =~ name || name.empty? || /\W/ =~ name
    true
  end
end

def valid_number?(num, operation)
  case operation
  when nil, "1", "2", "3"
    num.to_i.to_s == num || num.to_f.to_s == num
  when "4"
    (num.to_i.to_s == num || num.to_f.to_s == num) && (num.to_f != 0.0)
  end
end

def valid_operator?(operator)
  return true if %w(1 2 3 4).include?(operator)
end

def prompt(str)
  Kernel.puts(">> #{str}")
end

def messages(message, lang = LANGUAGE)
  MESSAGES[lang][message]
end

def retrieve_number(num, operation = nil)
  loop do
    prompt(messages('number1')) if num == 1
    prompt(messages('number2')) if num == 2
    number = gets().chomp()
    return number if valid_number?(number, operation)
    if num == 1 || (num == 2 && %w(1 2 3).include?(operation))
      prompt(messages('invalid_number1'))
    else
      prompt(messages('invalid_number2'))
    end
  end
end

def retrieve_operation
  operation_msg = <<~MSG
  Please enter the operation you want to perform
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG
  prompt(operation_msg)
  loop do
    operator = Kernel.gets().chomp()
    return operator if valid_operator?(operator)
    prompt(messages('invalid_operator'))
  end
end

def find_result(num1, num2, operation)
  result = case operation
           when "1" then num1.to_f + num2.to_f
           when "2" then num1.to_f - num2.to_f
           when "3" then num1.to_f * num2.to_f
           when "4" then num1.to_f / num2.to_f
           end
  result
end

def greet
  prompt(messages('welcome'))
  loop do
    name = Kernel.gets().chomp()
    return name if valid_name?(name)
    prompt(messages('invalid_name'))
  end
end

def operation_to_sym(operation)
  sym = case operation
        when "1" then "+"
        when "2" then "-"
        when "3" then "*"
        when "4" then "/"
        end
  sym
end

def retrieve_answer
  prompt(messages('again'))
  answer = Kernel.gets().chomp().downcase()
  until %w(y yes n no).include?(answer)
    prompt(messages('invalid_answer'))
    answer = Kernel.gets().chomp()
  end
  answer
end

def display_result(number1, number2, operation, result)
  prompt("#{number1} #{operation_to_sym(operation)} #{number2} = #{result}")
end

name = greet()
Kernel.puts("Hello, #{name}")

# Main Loop Starts Here
loop do
  number1 = retrieve_number(1)

  operation = retrieve_operation()

  number2 = retrieve_number(2, operation)

  result = find_result(number1, number2, operation)

  display_result(number1, number2, operation, result)

  again_answer = retrieve_answer

  break if %w(n no).include?(again_answer)
  system('clear')
end

prompt(messages('goodbye') + " #{name}")
