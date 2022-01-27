=begin
Write a method that takes a single String argument and returns a new string that contains
the original value of the argument with the first character of every word capitalized and
all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

word_cap('four score and seven') == 'Four Score And Seven' # happy path
word_cap('the javaScript language') == 'The Javascript Language' # happy path
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word' # edge case

------ PED:- 0 MIN to 12 MIN --------------



**Input** : string of words
**Output** : a new string with first char of each word capitalized

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a single string as argument
- returns a new stirng
- is copy of the original stirng
- new string has the first char of every word capitalized
- all other letters are lowercased
-


**Implicit Requirements/Rules/Boundaries**
- if there are any non alphabetic chars at the beginning of  a word => then the word remains the same
- If a word has a single char only => then that char is capitalized


**Special Terms**
- word: an sequence of non blank chars or
- any sequence of chars delimted by spaces


**Examples/Test Cases**
- input: 'four score and seven'
- Output: 'Four Score And Seven'

- string -> list of words
- go thru the list of words and capitalize the first char of each word
- if a word starts with a non alphabetic char then donot capitalize
- join the list into a string

**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given a string of words # words are a sequence of non blank chars  'four score and seven'
- For each word in the string
  - capitalize the first char of current word
    - make the first char uppercase and the rest of the chars lowercase
- return the new string


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def word_cap(phrase)
  phrase.split.map do |word|
    word[0].upcase + word[1..-1].downcase
  end.join(" ")
end

p word_cap('four score and seven') #== 'Four Score And Seven' # happy path
p word_cap('the javaScript language') #== 'The Javascript Language' # happy path
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word' # edge case