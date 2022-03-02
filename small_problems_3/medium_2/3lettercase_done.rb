# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count 
# the number of uppercase and lowercase characters, as well as characters 
# that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3 
# entries: one represents the percentage of characters in the string 
# that are lowercase letters, one the percentage of characters that are 
# uppercase letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# Examples


# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

=begin


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string 
**Output** : hash with 3 key value pairs :lowercase, :uppercase, :neither

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as input
- returns the percentages of lowercase, uppercase and neither chars
- assume the string will always contain atleast one char


**Implicit Requirements/Rules/Boundaries**
- percentage should be upto one decimal place


**Special Terms**
-


**Examples/Test Cases**
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }

total: 10
lowecase: 5 -> 5/10 -> 50%
uppercase: 1 -> 1/10 -> 10%
neither: 4 -> 4/10 -> 40%




**Questions**
-


**Data Structures**
- input: string
- Output:hash with symbols as keys and floats as values
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string
- make a new hash # percentages
- Find the length of the string - Total number of chars
- Find the number of uppercase chars
   get the count of chars in the set 'A-Z'
- FInd the number of lowercase chars
  - get the count of chars in the set 'a-z'
- Find the number of neither chars
  - length of string - uppercase - lowercase chars
- Find the percentages of each by dividing by total length
- save :lowercase, :uppercase and :neither key value pairs in the hash
- return hash


**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def letter_percentages(string)
  total_chars = string.size

  uppercase_chars_count = string.count('A-Z')
  lowercase_chars_count = string.count('a-z')
  neither_chars_count = total_chars - uppercase_chars_count - lowercase_chars_count

  percentages = {}

  percentages[:lowercase] = (lowercase_chars_count/(total_chars.to_f))*100
  percentages[:uppercase] = (uppercase_chars_count/(total_chars.to_f))*100
  percentages[:neither] = (neither_chars_count/(total_chars.to_f))*100
  
  percentages

end





p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }



















# Solution
  # Copy Code
  # def letter_percentages(string)
  #   counts = {}
  #   percentages = {}
  #   characters = string.chars
  #   length = string.length

  #   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  #   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  #   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }

  #   calculate(percentages, counts, length)

  #   percentages
  # end

  # def calculate(percentages, counts, length)
  #   percentages[:lowercase] = (counts[:lowercase] / length.to_f) * 100
  #   percentages[:uppercase] = (counts[:uppercase] / length.to_f) * 100
  #   percentages[:neither] = (counts[:neither] / length.to_f) * 100
  # end
  # Discussion
  # Looking at this, we can see that there is quite a bit going on.
   # Let's break it up into pieces. This should help with understanding the overall problem and solution.

  # First, we set up the initial part of the data we want to create.
  # This method is expected to return a hash of character ratios, hence the hash called percentages.
   # There's also a counts hash to store the number of characters for lowercase, uppercase, and neither groups.
    # Storing this information will act as an intermediary step towards calculating our percent character ratios
     # later on.

  # We use the method, Array#count to find the number of occurrences of each type of character. 
  # Then, we pass our stored counts and percentages hashes to the calculate method to compute the ratios asked
   # for by this problem.

  # Remember, hashes are a bit complex. If you pass a hash into a method, 
  # and then alter a value in that hash, that altered value will then continue to persist even outside that method.

  # Further Exploration
  # If we passed a string 'abcdefGHI' as an argument to our method call the solution would be
   # {:lowercase=>66.66666666666666, :uppercase=>33.33333333333333, :neither=>0.0}. 
   # It would be nicer if we could round these float numbers so that our solution looks like this 
   # {:lowercase=>66.7, :uppercase=>33.3, :neither=>0.0}. Try creating that solution on your own.