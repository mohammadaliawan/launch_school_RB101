names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do 
#   p names.shift

#   break if names.empty?
# end

until names.empty?
  puts names.shift
end