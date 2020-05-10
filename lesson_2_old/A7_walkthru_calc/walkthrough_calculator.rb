#Build a command line calculator program that does the following:

#asks for two numbers
#asks for the type of operation to perform: add, subtract, multiply or divide
#displays the result


#Pseudocode
#Ask for two numbers
#Ask for type of opeation
#Perform the operation
#Display the result


Kernel.puts("Welcome to Calculator!")

# Ask for two numbers

Kernel.puts("What is the first number?")
number_1 = Kernel.gets().chomp()

Kernel.puts("What is the second number?")
number_2 = Kernel.gets().chomp()

#Ask for type of operation:

Kernel.puts("What operation do you want to perform?\n1) add\n2) subtract\n3) multiply\n4) divide")
operation = gets().chomp()

if operation == "1"
  result = number_1.to_i + number_2.to_i
elsif operation == "2"
  result = number_1.to_i - number_2.to_i
elsif operation == "3"
  result = number_1.to_i * number_2.to_i
else
  result = number_1.to_f / number_2.to_f
end

Kernel.puts("The result is #{result}")