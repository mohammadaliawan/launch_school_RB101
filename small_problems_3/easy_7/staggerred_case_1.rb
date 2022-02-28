=begin


Write a method that takes a String as an argument,
and returns a new String
that contains the original value using a staggered capitalization scheme in
which every other character is capitalized,
and the remaining characters are lowercase.
Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.


staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** :a new string with staggered capitalazation

**Explicit Requirements/Rules/Boundaries**
- return a new string
- every other char is capitalized
- other chars are lowercase
- nonalphabetic chars count as chars

**Implicit Requirements/Rules/Boundaries**
- everyother char means even indexed chars in a string
- odd indexed chars to be lowercases


**Special Terms**
-


**Examples/Test Cases**
- input: I Love Launch School!
- Output:'I LoVe lAuNcH ScHoOl!'


**Questions**
-


**Data Structures**
- input: string
- Output:string
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- For each char in the string
  - if the index of current char is even
    - convert it to ippercase
  - else
    - convert it to lowercase
- return a new string


**Implementation details**
- Covert the stirng to an array of chars
- Iterate through the list of chars with index
  - if index is even?
      convert it to uppercase
    else
      convert it to lowercase
    end
- join the array of chars to a string
- return the string


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def staggered_case(phrase, which = :uppercased)
  list_of_chars = phrase.chars

  list_of_chars.map.with_index do |char, index|
    unless which == :downcased
      index.even? ? char.upcase : char.downcase
    else
      index.odd? char.upcase


  end.join
end

p staggered_case('I Love Launch School!') #== 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')# == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers')# == 'IgNoRe 77 ThE 444 NuMbErS'