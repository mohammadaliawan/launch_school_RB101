=begin
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each letter.
The non-alphabetic characters should still be included in the return value;
they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :
**Output** :

**Explicit Requirements/Rules/Boundaries**
-return a new string
- every other char is capitalized
- other chars are lowercase
- nonalphabetic chars dont count when toggling case

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**
- input:
- Output:


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
- init index to 0
- For each alphabetic char in the string
  - if index is odd
      change the case to uppercase
    otherwise
      change the case to lowercase



**Implementation details**
- init list_of_chars = arry of chars in the string
- init counter = 0
- iterate through list_of_chars
  - if the current char is alphabetic char
    increment the counter by 1
  - if counter is odd
      change the case of current char to uppercase
  - else
      change the case to lowercase



-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def staggered_case(phrase)
  list_of_chars = phrase.chars
  counter = 0
  new_phrase = ""

  list_of_chars.each do |char|
    if char =~ /[a-zA-z]/
      counter += 1
      (counter.odd?) ? (new_phrase << char.upcase) : (new_phrase << char.downcase)
    else
      new_phrase << char
    end
  end
  new_phrase
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
