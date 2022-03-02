=begin
Write a method that takes a sentence string as input, 
and returns the same string with any sequence of the words 'zero', 
'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
converted to a string of digits.

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') 
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : sentence string
**Output** : same string with words zero... replaced with their respective string digits

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as input
- replace any sequence of words "zero"... with string digits
- any sequence of words:
  - where ever zero... occur in the string consecutively as a seperate word
-words are any sequence of non space chars

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output
**Examples/Test Cases**
- input: 'Please call me at five five five one two three four. Thanks.'
- Output: 'Please call me at 5 5 5 1 2 3 4. Thanks.'

- look for the words zero... in the given string and replace with their respective string digits
- words to be replaced should be complete words only

[' zero ', ' one ', ' two ', ' three ', ' four ', ' five ', ' six'...]

{' zero ' => '0'...}




**Questions**
-


**Data Structures**
- input: string
- Output: string mutated
- Intermediate:
- Storage: {' zero '=> '0'}

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- create a hash containing {' zero '=> '0'}
- iterate through the hash
  - if the current key is included in the given string
    - replace all instances of the word with respective string digit


**Implementation details**
- 


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

DIGITS_TO_WORDS = {
  'zero' => '0',
  'one' => '1',
  'two' => '2',
  'three' => '3',
  'four' => '4',
  'five' => '5',
  'six' => '6',
  'seven' => '7',
  'eight' => '8',
  'nine' => '9'
}

def word_to_digit(sentence)
  DIGITS_TO_WORDS.each do |word, digit|
    sentence.gsub!(word, digit)
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'