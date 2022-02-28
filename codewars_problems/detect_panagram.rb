# A pangram is a sentence that contains every single 
# letter of the alphabet at least once. For example, 
# the sentence "The quick brown fox jumps over the lazy dog"
# is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

# Given a string, detect whether or not it is a pangram. 
# Return True if it is, False if not. Ignore numbers and punctuation.

# p panagram?("The quick brown fox jumps over the lazy dog.") == true
# p panagram?("This is not a pangram.") == false

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : boolean

**Explicit Requirements/Rules/Boundaries**
- A pangram is a sentence that contains every single 
letter of the alphabet at least once.
- case is irrelevant
- Return True if it is, False if not. 
- Ignore numbers and punctuation.

**Implicit Requirements/Rules/Boundaries**
-


**Special Terms**
-


**Examples/Test Cases**



**Questions**
-


**Data Structures**
- input: string
- Output: boolean
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string
- create a look up dictionary for all alphabets a-z
- for each char in the dictionary
  - check if it appears in the given string
  - return true if all appear
  - return false if even one does not appear



**Implementation details**\
- INIT ALPHABETS = array of a-z
- iterate through the ALPHABETS list
  - UNLESS given string includes current alphabet
      return false
    END
  RETURN true


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

ALPHABETS = ('a'..'z').to_a

# def panagram?(sentence)
#   ALPHABETS.all? do |alphabet|
#     sentence.downcase.include?(alphabet)
#   end
# end

def panagram?(string)
  string.downcase.scan(/[a-z]/)#.uniq.size == 26
end

p panagram?("The quick brown fox jumps over the lazy dog.")# == true
p panagram?("This is not a pangram.") #== false