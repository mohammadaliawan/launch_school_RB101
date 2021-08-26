# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# selected_chars = ''
# counter = 0

# loop do
#   current_char = alphabet[counter]

#   if current_char == 'g'
#     selected_chars << current_char
#   end

#   counter += 1
#   break if counter >= alphabet.size
# end

# p selected_chars


# fruits = ['apple', 'banana', 'pear']
# transformed_fruits = []
# counter = 0

# loop do
#   current_element = fruits[counter]
#   transformed_element = current_element + 's'

#   transformed_fruits.push(transformed_element)

#   counter += 1
#   break if counter >= fruits.size
# end

# p transformed_fruits


# def select_fruit(produce)
#   fruits = {}
#   counter = 0
#   produce_keys = produce.keys

#   loop do
#     break if counter >= produce_keys.size

#     current_key = produce_keys[counter]

#     if produce[current_key] == "Fruit"
#       fruits[current_key] = "Fruit"
#     end

#     counter += 1
#   end

#   fruits
# end


# produce = {
#   'apple' => 'Fruit',
#   'carrot' => 'Vegetable',
#   'pear' => 'Fruit',
#   'broccoli' => 'Vegetable'
# }

# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

def double!(numbers)
  counter = 0

  loop do
    break if counter >= numbers.size

    current_number = numbers[counter]
    doubled_current_number = current_number * 2

    numbers[counter] = doubled_current_number

    counter += 1
  end
end

ary = [1,2,3,4]
p ary

double!(ary)
p ary