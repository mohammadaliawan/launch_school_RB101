=begin
A string is considered to be in title case if each word in the string is either
(a) capitalised (that is, only the first letter of the word is in upper case) or
(b) considered to be an exception and put entirely into lower case unless it is 
the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of 
exceptions (minor words). The list of minor words will be given as a string with each
word separated by a space. Your function should ignore the case of the minor words string 
 -- it should behave in the same way even if the case of the minor word string is changed.

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

------ PED:- 0 MIN to 12 MIN --------------


**Input** :two strings, second argument will be optional
**Output** :string

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as input
- convert the string into title case
  title case: 
    - each word is capitalized : first letter is uppercase, rest are lowercase
    - unless the word is an exception in which case it will be all in lowercase
    - The first word is to be always capitalized even if its an exception
- exceptions are optional
  - all words need to be capitalized
- exceptions - minor words will be given as a second string argument with spaces
- minor word - case insensitive


**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'

'a clash of KINGS'-> [a clash of KINGS] -> [A Clash of Kings] -> "A Clash of Kings"
'a an the of'(downcase) -> [a an the of]

p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'


p title_case('the quick brown fox') == 'The Quick Brown Fox'


**Questions**
-


**Data Structures**
- input: string, string = ""
- Output: string
- Intermediate: array
- Storage: array for storing exceptions

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given two strings #sentence, #minors
- convert each string to lowercase
- convert each string to an array of words # " "
- make a new array - title_case_words
- iterate over the sentence_words
  - append current_word capitalized to title_case_words if index == 0
  - otherwise,
    - if current_word is included in the minor_words array
      - append current_word to title_case array
    -else
      - append capitalized current_word to title_case_array
- join the title_case_array back to a string
- return the new string

**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def title_case(sentence, minors = "")
  sentence = sentence.downcase
  minors = minors.downcase

  sentence_words = sentence.split(" ")
  minor_words = minors.split(" ")

  title_case_words = []

  sentence_words.each_with_index do |current_word, idx|
    if idx == 0
      title_case_words << current_word.capitalize
    elsif minor_words.include?(current_word)
      title_case_words << current_word
    else
      title_case_words << current_word.capitalize
    end
  end

  title_case_words.join(" ")

end

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'