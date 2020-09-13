=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Examples:

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

input: array of integers
output: array of integers

Rules:

Sort the array of integers based on the english words for each number

DS input: array
ouput: array
intermediate: a hash for look up

Algo:

Given an array of integers

- Create a look up hash of all english words and their respective integers values {integer => word}
- For the given array of ints, store each integer and its respective word as a hash(int_word_hash){word => int}
- Get all the keys form the int_word_hash
- Sort the array of keys
- Tranform the array of keys(english words sorted) into an array respective integers

PSEUDOCODE

Accept an array of integers (int_ary)

SET lookup = a hash of ints => eng_words
SET int_word_hash = {}
LOOP over int_ary
  current_int_word = look_up[current_int]
  
  int_word_hash[current_int_word] = current_int
  
END

SET eng_word_keys = int_word_hash.keys

SET eng_word_keys_sorted = eng_word_key.sort

SET sorted_ints = []

LOOP over eng_word_keys_sorted
  aorted_ints << int_word_hash[current_eng_word]
END

RETURN sorted_ints

=end

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(int_ary)
  int_ary.sort_by{|int| NUMBER_WORDS[int]}  

#   int_word_hash = {}
  
#   int_ary.each do |int|
#     current_int_word = NUMBER_WORDS[int]
#     int_word_hash[current_int_word] = int
#   end
  
#   eng_word_keys = int_word_hash.keys
  
#   p eng_word_keys_sorted = eng_word_keys.sort
  
#   sorted_ints = eng_word_keys_sorted.map {|word| int_word_hash[word]}
  
end
  
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p alphabetic_number_sort((5..10).to_a) == [8,5,9,7,6,10]
