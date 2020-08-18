# 
# Your previous Markdown content is preserved below:
# 
# ## Data Structure
# 
# Data Structure Input: numbers
# Output: strings
# 
# ## Algorithm:
# 
# 1.  6 times Get user input
#     Iterate through an array of string ['1st'...'last']
#     For each time
#       - Prompt the user for "1st..last" number
#       - Validate the number
#       - Keep asking for a valid number until user inputs a valid number  
# 
# 2. Store the first 5 values in an array.
#     Initialize an empty array to store numbers
#     Shovel the numbers into the empty array
# 
# 3. check if the 6th input is included amongst the first 5
#     If yes, print a statement stating this.
#     If not, print a statement saying this.
#   
# 
# ```ruby
# def prompt(msg)
#   puts"=>#{msg}"
# end
# 
# def valid_number?(user_input)
#   user_input.to_i.to_s == user_input
# end
# 
# def get_user_input(number_place)
#   loop do
#     prompt("Enter the #{number_place} number.")
#     user_input = gets.chomp
#     return user_input.to_i if valid_number?(user_input)
#     prompt("Invalid input.  Please enter an integer.")
#   end
# end
# 
# number_place_array = ['1st', '2nd', '3rd', '4th', '5th', 'last']
# 
# number_array = []
# 
# user_input = 0
# number_place_array.each do |number_place|
#   user_input =  get_user_input(number_place)
#   number_array << user_input unless number_place == 'last'
# end
# 
# 
# if number_array.include?(user_input)
#   prompt("The number #{user_input} appears in #{number_array}")
# else
#   prompt("The number #{user_input} does not appear in #{number_array}.")
# end
# ```