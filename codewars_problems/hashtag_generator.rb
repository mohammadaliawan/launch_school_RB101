

# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.
# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false


# p generateHashtag("") == false
# p generateHashtag(" " * 200) == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars") == "#Codewars"
# p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false

=begin

------ PE:- 0 MIN to 5 MIN --------------


**Input** :string
**Output** : string

**Explicit Requirements/Rules/Boundaries**
# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.


**Implicit Requirements/Rules/Boundaries**
- empty string returns false
- Remove spaces from the string
- If the result is an empty string return false
- If its a single word in the string capitalize word


**Special Terms**
-


**Examples/Test Cases**
# p generateHashtag("") == false
# p generateHashtag(" " * 200) == false
# p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
# p generateHashtag("Codewars") == "#Codewars"
# p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
# p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
# p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
# p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
# p generateHashtag("a" * 139) == "#A" + "a" * 138
# p generateHashtag("a" * 140) == false


**Questions**
-


--------------- DA:- 6 MIN to 15 MIN------------

**Data Structures**
- input: string
- Output: string
- Intermediate: array
- Storage:


**High Level Algorithm**
- Given a string
- Return false if string is empty
- convert the string to an array of words # words are seperated by spaces
- For each word in the array
  - Capitalize current word
- Join the words in the array back to a string without spaces
- prepend a hash tag to the retulting string
- If resulting string length is <= 140
  - return reuslting string
  else
  - return false

**Implementation details**
- For each word in the array
  - Capitalize current word
  - prepend a hashtag to the resulting string
- #map



-------------- C: 15 MIN to 20 MIN ------------------------

**CodeWithIntent**
=end

def generateHashtag(string)
  return false if string.gsub(/ /, "").empty?
  
  capitalized_string = string.split(" ").map do |word|
    word.capitalize
  end
  
  hash_tag_str =  capitalized_string.join("").prepend("#")
  
  if hash_tag_str.size <= 140
    return hash_tag_str
  else
    return false
  end
end

p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice")==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false
