def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(number)
  number.to_i != 0
end

def operator_to_msg(op)
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

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do # Input name loop
  name = Kernel.gets().chomp()

  if name.empty?
    prompt("Please input a valid name.")
  else
    break
  end
end

prompt("Hello, #{name}")

loop do #  main loop
  number1 = '' # Input first number loop
  loop do
    prompt("What is the first number?")
    number1 = Kernel.gets().chomp()
    break if valid_number?(number1)
    prompt("Not a valid number...Please input a valid number.")
  end

  number2 = '' # Input second number loop
  loop do
    prompt("What is the second number?")
    number2 = Kernel.gets().chomp()
    break if valid_number?(number2)
    prompt("Not a valid number...Please input a valid number.")
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
    prompt("Must be 1,2,3 or 4")
  end

  prompt("#{operator_to_msg(operation)} the two numbers...")

  result = case operation
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to do another calculation?(Y for yes)")
  answer = gets().chomp()

  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for using the calculator. GoodBye!")
