flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array

# result = {}
# counter = 0

# loop do
#   break if counter >= flintstones.size

#   current_name = flintstones[counter]

#   result[current_name] = counter

#   counter += 1
# end

# p result

result = flintstones.map.with_index do |name, index|
  [name, index]
end

p result.to_h

# result = {}

# flintstones.each_with_index do |name, index|
#   result[name] = index
# end