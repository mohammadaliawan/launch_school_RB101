=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2.
 Given a lowercase string that has alphabetic characters only and no spaces, return the length of the
 longest vowel substring. Vowels are any of aeiou.

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8


------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : integer, which is the length of the longest vowel substring

**Explicit Requirements/Rules/Boundaries**
- lowercase letters only
- with only alphabatic chars and no spaces
- return the length of the longest vowel substring
- single char strings are valid substrings
- longest vowel substring:
  - longest: largest in length
  - vowel: a e i o u
  - substring: any consective subseqeunce of chars in a string
  - the largest consective set of chars which are all vowels
- find the length of the largest consective set of chars which are all vowels

**Implicit Requirements/Rules/Boundaries**
- the vowels donot need to be in alphabetical order
- vowels can repeat in a substring and repeated vowels will count towards the length
- single char strings are valid substrings

**Special Terms**
-


**Examples/Test Cases**
solve("codewarriors") == 2

o e a io -> 2

solve("suoidea") == 3
uoi ea -> 3

p solve("iuuvgheaae") == 4
iuu eaae -> 3
p solve("ultrarevolutionariees") == 3
u a e o u io iee -> 3
p solve("strengthlessnesses") == 1
e e e e -> 1
p solve("cuboideonavicuare") == 2
u oi eo a i ua e =-> 2
p solve("chrononhotonthuooaos") == 5
o o o o uooao -> 5
p solve("iiihoovaeaaaoougjyaw") == 8
iii oo aeaaaoou a -> 8


**Questions**
-


**Data Structures**
solve("iuuvgheaae") == 4
["iuu", ]
""
"iuuvgheaae" -> iterate through each char -> "iuu"

- input: string
- Output: integer
- Intermediate:
- Storage: "", []

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string of lowercase letters
- init an empty array called vowel_substring
- Go through the each char in the string
  - init an empty string called current_vowel_substring "iuu"
  - if current_char is vowel 
      append current char to current_vowel_substring
    otherwise if previous char was a vowel
      append current_vowel_substring to the array vowel_substring
      reassign current_vowel_substring to ""
    otherwise
      go to the next char
    end

- Return the length of the longest vowel substring

**Implementation details**\
- INIT vowel_substring = []
- INIT current_vowel_substring = ""
- Iterate over the chars of the string with index # string.chars.each_with_index
  - if current_char is included in [aeiou]
      - append current_char to current_vowel_substring
    elsif string[current_index - 1] is included in [aeiou]
      - append current_vowel_substring to vowel_substring array
      - reassign current_vowel_substring to ""
- find the longest string in vowel_substring # max_by
- return the length of the longest string

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# def solve(string)
#   vowel_substring = []
#   current_vowel_substring = ""
#   string.chars.each_with_index do |char, idx|
#     if %w(a e i o u).include?(char)
#       current_vowel_substring << char
#     elsif %w(a e i o u).include?(string[idx - 1])
#       vowel_substring << current_vowel_substring
#       current_vowel_substring = ""
#     end
#   end
#   vowel_substring << current_vowel_substring
#   vowel_substring.max_by{|substring| substring.size}.size
# end

# def solve(string)
#   lengths = []
#   temp = ''
#   (0...string.size).each do |idx|

#     if %w(a e i o u).include?(string[idx])
#       temp << string[idx]
#     else
#       lengths << temp.size
#       temp = ''
#     end
#   end
#   lengths.max
# end

def solve(word)
  array = []
  count=0
  vowels=['a','e','i','o','u']
  word.chars.each do |letter|
    if vowels.include? (letter)
      array << count+=1
    else 
      count=0
    end
  end
  array
end

p solve("codewarriors") #== 2
p solve("suoidea") == 3
p solve("iuuvgheaae") #== 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8