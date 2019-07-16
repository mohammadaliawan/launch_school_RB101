require 'yaml'
MESSAGES = YAML.load_file('calc_messages.yml')

loop do
  Kernel.puts("For Espaniol type 'es', For English type 'en'")
  LANGUAGE = Kernel.gets().chomp()
  break if LANGUAGE == 'en' || LANGUAGE == 'es'
end

def messages(message, lang = LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(number)
  number.to_i.to_s == number || number.to_f.to_s == number
end

def operator_to_msg(op)
  msg = case op
        when '1'
          'Adding'
        when '2'
          'Subtracting'
        when '3'
          'Multiplying'
        when '4'
          'Dividing'
        end
  msg
end

prompt(messages('welcome'))

name = ''
loop do # Input name loop
  name = Kernel.gets().chomp()

  if name.empty?
    prompt(MESSAGES[LANGUAGE]['valid_name'])
  else
    break
  end
end

prompt("Hello, #{name}")

loop do #  main loop
  number1 = '' # Input first number loop
  loop do
    prompt(messages('number1'))
    number1 = Kernel.gets().chomp()
    break if number?(number1)
    prompt(messages('valid_number'))
  end

  number2 = '' # Input second number loop
  loop do
    prompt(messages('number2'))
    number2 = Kernel.gets().chomp()
    break if number?(number2)
    prompt(messages('valid_number'))
  end

  operator_prompt = <<-MSG # operator prompt message
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do # operation input loop
    operation = gets().chomp()
    break if %w(1 2 3 4).include?(operation)
    prompt(messages('valid_operator'))
  end

  prompt("#{operator_to_msg(operation)} the two numbers...")

  result = case operation
           when '1'
             number1.to_f + number2.to_f
           when '2'
             number1.to_f - number2.to_f
           when '3'
             number1.to_f * number2.to_f
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt(messages('again'))
  answer = gets().chomp()

  break unless answer.downcase.start_with?("y")
end

prompt(messages('goodbye'))
