# def mess_with_vars(one, two, three)
#   one = two # "two"
#   two = three # "three"
#   three = one # two

#   p one, two, three
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" # one
# puts "two is: #{two}" # two
# puts "three is: #{three}" # three

# def mess_with_vars(one, two, three)
#   one = "two" 
#   two = "three"
#   three = "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" 
# puts "two is: #{two}"
# puts "three is: #{three}"

def mess_with_vars(one, two, three)
  one.gsub!("one","two") # "two"
  two.gsub!("two","three") # "three"
  three.gsub!("three","one")# "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # two
puts "two is: #{two}" # three
puts "three is: #{three}" # one