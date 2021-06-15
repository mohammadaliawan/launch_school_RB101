def prompt(string)
  Kernel.puts("=> #{string}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
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

prompt("Welcome to the Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  break unless name.empty?()
  prompt("Make sure to enter a valid name!")
end

prompt("Hello #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt("Enter the first number:")
    number1 = Kernel.gets().chomp()

    break if valid_number?(number_1)
    prompt("ERROR!! That's not a valid integer!")
  end

  number2 = ''
  loop do
    prompt("Enter the second number:")
    number2 = Kernel.gets().chomp()

    break if valid_number?(number_2)
    prompt("ERROR!! That's not a valid number!")
  end

  operator_prompt = <<~MSG
    Enter the Operation you want to be perform:
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

  prompt(operator_prompt)

  operation = ''
  loop do
    operation = Kernel.gets().chomp()

    break if %w(1 2 3 4).include?(operation)
    prompt("Must Enter 1,2,3 or 4!")
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when '1'
             number_1.to_i() + number_2.to_i()
           when '2'
             number_1.to_i() - number_2.to_i()
           when '3'
             number_1.to_i() * number_2.to_i()
           when '4'
             number_1.to_f() / number_2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to calculate again? (Y to caluculate again?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator! Goodbye../\\..')
