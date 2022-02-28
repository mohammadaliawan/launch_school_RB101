=begin

Write a method that
takes a string as an argument
and returns a new string in which
every uppercase letter is replaced by its lowercase version,
and every lowercase letter by its uppercase version.
All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :string
**Output** :string with case of letters swapped

**Explicit Requirements/Rules/Boundaries**
- return a new string
- uppercase letters replaced with lowercase counterparts
- lowercase letters replaced with uppercase counterparts
- All other chars unchanged
- donot use swapcase

**Implicit Requirements/Rules/Boundaries**
- spaces, nonalphabetic chars remain unchanged,


**Special Terms**
-


**Examples/Test Cases**
I will try to come up with a logical way to arrive at the output from the input
- input: CamelCase
- Output: cAMELcASE

For each char
- we need a way to know which case a char is in
    if a char is already uppercase then trying to change it to uppercase should not change it.
      change it to lowercase
    if a char is already lowercase then trying to change it to lowercase should not change it
      change it to uppercase
**Questions**
-


**Data Structures**
- input:string
- Output:string
- Intermediate: array
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- given a string
- For each char in the string
  - if the char is uppercase
    - change it to lowercase
    else
    - change it to uppercase



**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def swapcase(sentence)
  all_chars = sentence.chars

  all_chars.each do |char|
    unless char.upcase!
      char.downcase!
    end
  end
  all_chars.join
end

p swapcase('CamelCase') #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'