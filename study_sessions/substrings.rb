# def find_substrings(str,min_chars)
#   substring_ary = []

#   starting_index = 0

#   while starting_index <= (str.size - min_chars)
#     length_substring = min_chars
#     while length_substring <= (str.size - starting_index)
#       substring_ary << str[starting_index, length_substring]
#       length_substring += 1
#     end
#     starting_index += 1
#   end
#   substring_ary
# end


def substrings(string, min_chars)
  
  substrings_ary = []
  
  # 0.upto(string.size - min_chars) do |starting_index|
  #   min_chars.upto(string.size - starting_index) do |length|
  #     substrings_ary << string[starting_index, length]
  #   end
  # end
  
  substrings_ary
end

p substrings("hello", 4)



