=begin

Problem: sort this array according to the length of the strings

input: an array of word strings  %w(apple pear fig)
Ouput: an array of words strings sorted according to the length of the words ["fig", "pear", "apple" ]

Rules: sort the array of wors in ascending order according to the lenght of each word in the array

DS: input: an array of strings
Output: an array of strings

Algo: 
Given an array of strings

- Init an empty hash (lenght_hsh)

pattern: mapping an array to a hash, storing data abou the array elements in a hash

- iterate through the array of strings (str_ary)
  - calculate the length of each word/string
  - store the length of each word and the word itself in the length_hsh as {word.length => word}


- Sort the keys in the length_hsh in ascending the order
  - create an array of word lengths (sorted_lengths) (keys in the length hash)
  - Sort it using Array#sort method
- Transform the sorted_lengths array to an array of words
  - map each length to its respective word in the length_hsh
=end


str_ary = %w(apple pear fig) 

# mapping an array to a hash, storing data abou the array elements in a hash

#str_ary.to_h {|word| [word.length,word] } # declerative

length_hsh = {} # imperative

str_ary.each do |word|
  length_hsh[word.length] = word #{word.length => word}
end

length_hsh = { 5 => 'apple', 4 => 'pear', 3 => 'fig'}

sorted_lengths = length_hsh.keys.sort
#[3,4,5]

p sorted_lengths.map {|length| length_hsh[length]} # => ["fig", "pear", "apple" ]