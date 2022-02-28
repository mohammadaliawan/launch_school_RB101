=begin

Write a method that takes a string, and returns a new string in 
which every consonant character is doubled. Vowels (a,e,i,o,u), 
digits, punctuation, and whitespace should not be doubled.

Examples:

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : string with every consonant doubled

**Explicit Requirements/Rules/Boundaries**
- wrtie a method
- takes a string as argu
- return a new string
- in which every consonant is doubled
- Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.
- a,e,i,o,u, 1,2,3,4,5,6,7,8,9,0,all special chars, space 
- these should appear only once

**Implicit Requirements/Rules/Boundaries**
- return empty string if input is ""
- both uppercase and lowercase chars need to be doubled

**Special Terms**
- consonant : any alphabet that is not a vowel
- doubled: occur twice consectively, a new same char needs to be inserted next to the existing char

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: "Hello-World!"
- Output: "HHellllo-WWorrlldd!"

""
"Hello-World!" go through each char
if its a ('a-z', '^aeiou')
  append the char twice to ""



**Questions**
-


**Data Structures**
- input: string
- Output: string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init an empty string # double_chars
- init an array of valid chars ("a".."z") + ("A".."Z") - "a", "e", "i", "o", "u"
- For each char in the given string
  - check if its in the set valid chars
    - append the char twice to double_chars
  - if it is not in the above set
    - append the char once to double_chars
- return double_chars

**Implementation details**
- 


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def double_consonants(str)
  double_chars = ""

  valid_chars = ("a".."z").to_a + ("A".."Z").to_a - %w(a e i o u A E I O U)

  str.each_char do |char|
    double_chars << char
    double_chars << char if valid_chars.include?(char)
  end
  double_chars
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
