=begin

Write a method that takes a string as an argument and groups the number of times each 

character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as 
lowercase ones.

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : hash of occurances

**Explicit Requirements/Rules/Boundaries**
- write a method
- that takes a string as argument
- returns a hash containing 
  - keys: number of occurances
  - values: arrays of chars that appear key number of times in the string
- returned hash needs to be sorted by the highest number of occurances
- the value arrays need to be sorted alphabetically
- ignore spaces, special chars
- uppercase letters count as lowercase 

**Implicit Requirements/Rules/Boundaries**
- 


**Special Terms**
- 


**Examples/Test Cases**
p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}

p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}

{}
"Hello. Hello? HELLO!!" -> "HelloHelloHELLO" -> []

p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}

p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}

p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}


**Questions**
-


**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string
- make the string lowercase # lowercase_str
- delete all non alphanuemric chars
- convert the string into an array of uniq chars
- make an empty hash # occurances
- iterate over the uniq array of chars [h e l o]
  - get the count of current char
  - if the current char count appears in the occurances hash
      - append the current_char to the value for current count
  - else
      - assign the current count as key and value as [current_char]
- find all the keys of the occurances hash # counts
- sort counts in descending order
- init sorted hash
- iterate through the sorted count
  - assign the current count as key in the sorted hash and assign it to the sorted value of the key in the occurances hash



**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def get_char_count(string)
  lowercase_str = string.downcase

  keys = lowercase_str.gsub(/[^0-9A-z]/, "").chars.uniq.sort

  occurances = {}

  keys.each do |char|
    current_count = lowercase_str.count(char)
    if occurances.key?(current_count)
      occurances[current_count] << char
    else
      occurances[current_count] = [char]
    end
  end
  occurances

  occurances.sort_by{|key, value| key}.reverse.to_h

end

p get_char_count("Mississippi") #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}