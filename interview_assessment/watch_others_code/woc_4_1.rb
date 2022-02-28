=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings.
Yowu will return true if you find a substring that appears in both strings, or false if you do not.
We only care about substrings that are longer than one character long.

p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana" ) == true
p substring_test("test", "lllt" ) == false
p substring_test("", "" ) == false
p substring_test("1234567", "541265" ) == true
p substring_test("Supercalifragilisticexpialidocious", "SoundOfItIsAtrociou" ) == true



------ PED:- 0 MIN to 12 MIN --------------


**Input** : two strings
**Output** : boolean true or false

**Explicit Requirements/Rules/Boundaries**
- given 2 strings
- return true if both strings have a substring in common
- return false if there are no substrings common among them
- substring length >= 2
- 


**Implicit Requirements/Rules/Boundaries**
- if one of the arguments is empty return false
- case does not matter
- if both strings empty return false
- if either string length <= 1, return false
- before comparing substrings make both strings of same case

**Special Terms**
-


**Examples/Test Cases**
substring_test("BANANA", "banana" ) == true
substring of argu1 = ["ba", "ban"]
substrings of argu2 = ["ba", ban]


case doesnot matter
before comparing substrings make both strings of same case

p substring_test("Something", "") == false
p substring_test("", "Something") == false
if either string length <= 1, return false



**Questions**
-


**Data Structures**
- input:two string
- Output: boolean
- Intermediate: strings 
- Storage: array

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given two strings
- Return false if length of either strings <= 1
- Downcase both strings
- Find all substring of argu1 >= 2 in length
- Find all substrings of argu2 >= 2 in length
- For each substring for argu1
  - For each substring for argu2
      - if current argu1 substring == current argu2 substring
          return true
- After all iterations are complete and we have not returned true for any of the substring
-   Return false


**Implementation details**\
Subprocess - Find all substring of argu1 >= 2 in length
  - INIT a new empty array #substrings
  - Iterate over the start index from 0 to size - 2
    - iterate over the end index from startindex + 1 to last index
      string[startindex..endindex]

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def substring_test(word_1, word_2)
  return false if (word_1.size <= 1) || (word_2.size <= 1)

  word_1 = word_1.downcase
  word_2 = word_2.downcase

  word_1.chars.each_with_index do |char_1, index_1|
    return false if index_1 == word_1.size - 1
    word_2.chars.each_with_index do |char_2, index_2|
      next if index_2 == word_2.size - 1
      return true if char_1 == char_2 && word_1[index_1 + 1] == word_2[index_2 + 1]
    end
  end
end

# def find_all_substrings(word)
#   substrings = []
#   (0..(word.size - 2)).each do |startindex|
#     ((startindex + 1)..(word.size - 1)).each do |endindex|
#       substrings << word[startindex..endindex]
#     end
#   end
#   substrings
# end

# def substring_test(word_1, word_2)
#   return false if (word_1.size <= 1) || (word_2.size <= 1)

#   word_1 = word_1.downcase
#   word_2 = word_2.downcase

#   substrings_1 = find_all_substrings(word_1)
#   substrings_2 = find_all_substrings(word_2)

#   substrings_1.each do |sub_1|
#     substrings_2.each do |sub_2|
#       return true if sub_1 == sub_2
#     end
#   end
#   return false
# end

p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana" ) == true
p substring_test("test", "lllt" ) == false
p substring_test("", "" ) == false
p substring_test("1234567", "541265" ) == true

p substring_test("Supercalifragilisticexpialidocious", "SoundOfItIsAtrociou" ) == true
