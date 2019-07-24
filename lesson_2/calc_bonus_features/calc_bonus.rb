require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

def valid_lang?(lang)
  lang == 'es' || lang == 'en'
end

def retrieve_language
  loop do
    prompt(MESSAGES['language'])
    language = Kernel.gets().chomp().downcase()
    return language if valid_lang?(language)
    prompt(MESSAGES['invalid_lang'])
  end
end
#Checked uptil here



def prompt(str)
  Kernel.puts(">> #{str}")
end

def messages(message, lang = LANGUAGE)
  MESSAGES[lang][message]
end

def display_number_prompt(num)
  prompt(messages('number1')) if num == 1
  prompt(messages('number2')) if num == 2
end

def display_invalid_number(operation)
  case operation
  when nil, "1", "2", "3"
    prompt(messages('invalid_number1'))
  else
    prompt(messages('invalid_number2'))
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

def retrieve_number(num, operation = nil)
  loop do
    display_number_prompt(num)
    input_number = Kernel.gets().chomp()
    return input_number if valid_number?(input_number, operation)
    display_invalid_number(operation)
  end
end

def valid_operator?(operator)
  %w(1 2 3 4).include?(operator)
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

def display_greet(name)
  prompt(messages('welcome') + name)
end

def invalid_name?(name)
  if name.empty? || /\d/ =~ name || /\W/ =~ name
    true
  else
    false
  end
end

def retrieve_username
  prompt(messages('first_name'))
  loop do
    name = Kernel.gets().chomp()
    return name unless invalid_name?(name)
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

def valid_answer?(ans)
  %w(y yes n no).include?(ans)
end

def retrieve_answer
  prompt(messages('again'))
  loop do
    answer = Kernel.gets().chomp().downcase()
    return answer if valid_answer?(answer)
    prompt(messages('invalid_answer'))
  end
end

def display_result(number1, number2, operation, result)
  prompt("#{number1} #{operation_to_sym(operation)} #{number2} = #{result}")
end

def new_calculation?(ans)
  %w(y yes).include?(ans)
end

LANGUAGE = retrieve_language()

name = retrieve_username()

display_greet(name)

# Main Loop Starts Here
loop do
  number1 = retrieve_number(1)

  operation = retrieve_operation()

  number2 = retrieve_number(2, operation)

  result = find_result(number1, number2, operation)

  display_result(number1, number2, operation, result)

  again_answer = retrieve_answer

  break unless new_calculation?(again_answer)
  system('clear')
end

prompt(messages('goodbye') + " #{name}")
