=begin

Write a method that returns a list of all substrings of a string that are palindromic. 
That is, each substring must consist of the same sequence of characters forwards as it does backwards. 

The return value should be arranged in the same sequence as the substrings appear in the string. 
Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention to case; 
that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. 
In addition, assume that single characters are not palindromes.

Examples:

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------

**Input** : string
**Output** : array of palindromic substrings

**Explicit Requirements/Rules/Boundaries**
- write a method
- returns a list of all substrings of a string that are palindromic
- the order of the substrings in the list should be the same as the order in which they appear in the string
- Duplicate palindromes should be included multiple times.
- you should consider all characters and pay attention to case
  - special nonalphabatic chars count
  - case matter i.e. case senstitive
- assume that single characters are not palindromes

**Implicit Requirements/Rules/Boundaries**
- return an empty array if no palidromic substrings found 
- the string itself can also be a substring

**Special Terms**
- substrings : a sequence of consecutive chars in the given string
- palindromic : each substring must consist of the same sequence of characters forwards as it does backwards
  - if the substring is reversed the sequene of chars remains the same

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: 'madam'
- Output: ['madam', 'ada']

- first to get all the substrings in the order required that are atleast 2 chrs long
  - shortest to longest


**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init palindrome_substrings
- Find all substrings that are 2 or more chars long , 
  -in the order that they appear in the string and in order from shortest to longest
- select the substrings which are palindromes 
- return the palindrome substrings array


**Implementation details**
- Find all substrings that are 2 or more chars long , 
  -in the order that they appear in the string and in order from shortest to longest

- For starting index from 0 to last index (size - 1)
  - For end index from current_starting_index + 1 to last index (size - 1)
    - get the current substirng str[start_index..end_index]
    - if it is a palindrome
       add that to the palindromic substring array



-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def palindromes(str)
  palindromic_substrings = []

  0.upto(str.size - 2) do |start_index|
    (start_index + 1).upto(str.size - 1) do |end_index|
      current_substring = str[start_index..end_index]
      if current_substring == current_substring.reverse
        palindromic_substrings << current_substring
      end
    end
  end
  palindromic_substrings
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]