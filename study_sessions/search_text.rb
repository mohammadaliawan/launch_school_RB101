=begin
Return substring instance count
Complete the solution so that it returns the number of times the search_text is found within the full_text.

Usage example:

solution('aa_bb_cc_dd_bb_e', 'bb') # should return 2 since bb shows up twice
solution('aaabbbcccc', 'bbb') # should return 1

problem:
create a method that accepts two strings - 1st one is the text, 2nd one is the search_text
return the occurences of the search_text

Example:
Assume texts are in one word
everything is in lowercase, don't have to account case sensitivity

Data:
input - 2 strings
arrays of characters (for text and search_text)
output - integer

Algorithm:
convert the text and search text an array of characters
find the size of the search text
set counter = 0
iterate through the characters in the text
  - retrieve a subarray from the text and compare that to the search text array 
    (subarray contains the element from the current index up to (index + (search_text_size-1)
    - if they are equal, increment counter by 1
  
=end



# text_array = ['a', 'b','b', 'c','d','e','b']

# search_text =  ['b','b']

# p text_array[0, search_text.length] == ['b','b']
# p text_array[1, search_text.length] == ['b','b']
# p text_array[2, search_text.length] == ['b','b']
# p text_array[3, search_text.length] == ['b','b']
# p text_array[4, search_text.length] == ['b','b']
# p text_array[5, search_text.length] == ['b','b']
# p text_array[6, search_text.length] == ['b','b']

# def solution(text, search_text)
#   search_arr = search_text.chars
#   text_arr = text.chars
  
#   search_size = search_text.length
#   counter = 0
  
#   text_arr.each_with_index do |_,index|
#     # start_point = index
#     # end_point = index + (search_size-1) 
    
#     if text_arr[index, search_size] == search_arr
#       counter += 1
#     end
#   end
#   counter
# end


Algo:

find all the substrings of length search text from the given text
  find the search_text length
  iterate on the starting_index for text
    get all the substring of the text of lenght search_text
    
count the number of times the search text appears in the substrings_array
    init a counter variable to 0
    iterate on the substrings_ary
      if current substring == seach text
        increment counter by 1
      end


def solution(text, search_text)
  
  substrings_ary = []
  search_text_size = search_text.size
  
  0.upto(text.size - search_text_size) do |starting_index|
      substrings_ary << text[starting_index, search_text_size]
  end

p substrings_ary
  
  counter = 0

  substrings_ary.each do |substring|
    if search_text == substring
      counter += 1
    end
  end
  counter
end

# p solution('abcdeb','b') == 2
# p solution('abcdeb', 'a') == 1
# p solution('abbc', 'bb') == 1

p solution("heydiddlediddle", "did") == 2



# starting_index = 0 ---> string.size - min_chars

# length = min_chars ---> string.size - starting_index


# def substrings(string, min_chars)
  
#   substrings_ary = []
  
#   0.upto(string.size - min_chars) do |starting_index|
#     min_chars.upto(string.size - starting_index) do |length|
#       substrings_ary << string[starting_index, length]
#     end
#   end
  
#   substrings_ary
# end
