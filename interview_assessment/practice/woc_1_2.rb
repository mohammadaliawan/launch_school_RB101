=begin
# Given an array of strings made only from lowercase letters, return an array of all
# characters that show up in all strings within the given array (including duplicates).
# For example, if a character appears 3 times in all strings but not 4 times, you need
# include that character 3 times in the final answer.

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings made only from lower case letters
**Output** :array of all chars that are common in all strings including duplicates

**Explicit Requirements/Rules/Boundaries**
- duplicates: any chars which appear multiple times in all strings should be included
as many times as they appear in all strings



**Implicit Requirements/Rules/Boundaries**
- if there are no common chars return an aempty array
- chars in the returned array should be in the order as they appear in the strings

**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: ['bella', 'label', 'roller']
- Output: ['e', 'l', 'l']

"bella", ['e', 'l']
['labl', 'rollr']


**Questions**
-


**Data Structures**
- input: array of strings
- Output: array of chars
- Intermediate: array of arrays
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of strings
- make a copy of the given array including strings
- init empty arrray # common chars
- remove the first string from the array copy
- for each char in the first element
  - check if it appears in all the remaining strings in the array copy
- return common chars



**Implementation details**\
- transform the given array of strings to an array of arrays of chars


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def transform_array(words)
  words.map{|word| word.chars}
end

def common_chars(words)
  common_chars = []
  words_chars = transform_array(words)

  first_element = words_chars.shift

  first_element.each do |char|
    if words_chars.all?{ |word| word.include?(char)}
      words_chars.each do |word|
        word.delete


  end

end

p common_chars(['bella', 'label', 'roller'])# == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) #== ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []