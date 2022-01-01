=begin

Write a method that takes an Array of Integers between 0 and 19,
and returns an Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen


Copy Code
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of integers
**Output** : array of integers

**Explicit Requirements/Rules/Boundaries**
- def a method
- takes an array of integers 0..19
- returns a new array of integers sorted based on their english words
-


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
- input: [0,1,2]
- Output: [1,2,0]

{0 => zero, 1 => one,...} english_word[0] => "zero"



- [0,1,2] -> [zero, one, two] --> [one, two, zero] -> [1,2,0]

**Questions**
-


**Data Structures**
- input: array of integers
- Output: array of integers
- Intermediate:
- Storage: hash to store english words for numbers

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of integres
- initialize a hash containing (1 => "one",...} #english_words
  - (0..19).to_a.zip(%w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
- Transform the array of integers to an array of english words
  - For each integer store the respective english word in an array
  - english_word[integer]
- sort the array of english words in ascending order
  - Array sort
- transform the array of sorted english words to an array of integers
  - For each english word store the respective integer in an array
  - english_words.key(english_word)


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

ENGLISH_WORDS = (0..19).to_a.zip(%w(zero one two three four five six seven eight nine ten eleven twelve
thirteen fourteen fifteen sixteen seventeen eighteen nineteen)).to_h

# def alphabetic_number_sort(array_of_int)
#   words = array_of_int.map {|integer| ENGLISH_WORDS[integer]}

#   sorted_words = words.sort

#   sorted_words.map {|word| ENGLISH_WORDS.key(word)}
# end

def alphabetic_number_sort(array_of_int)
  array_of_int.sort_by {|integer| ENGLISH_WORDS[integer]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]