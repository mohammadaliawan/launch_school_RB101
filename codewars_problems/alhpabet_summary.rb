=begin

Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. 
In the alphabet, a and b are also in positions 1 and 2. 
Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters 
that occupy their positions in the alphabet for each word. For example,

solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.

Input will consist of alphabet characters, both uppercase and lowercase. No spaces.

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]


------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings
**Output** : array of integers

**Explicit Requirements/Rules/Boundaries**
- write a method that takes an array of words
- return an array of number of letters in each word that have the same position in the string as their position in the alpabet
- "a" or "A" are at position 1
- position = index + 1


**Implicit Requirements/Rules/Boundaries**
- uppercase and their lowercase letters have the same positions


**Special Terms**
-


**Examples/Test Cases**
solve(["abode","ABc","xyzD"]) == [4,3,1]

go through the array of strings
   for each string
    go through its chars
    if the position of current char matches the the position of char in alphabets
      increment a counter by 1
    save the counter final value in an array

["abide","ABc","xyz"]) == [4,3,0]

solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]

olve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

**Questions**
-


**Data Structures**
- input: array of strings
- Output: array of numbers
- Intermediate: array of chars
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- init an array of all alphabets a-z
- make all chars in the strings lowercase
- number_of_letters = []
- For each string the array
-   init a counter variable to 0
  - For each char in current string
      - if the position of curretn char matches to the position of char in alphabet
          increment a counter by 1
      - append current_counter to number of letters


**Implementation details**\
- INIT ALPHABETS = ['a'to'z']
- transform the array of strings to lowercase array of strings
- INIT number_of_letters to []
- iterate through the array of strings
  - INIT counter to 0
  - iterate through the chars and indices of current string # chars.each_with_index
    - IF current_index == index of that char in ALPHABETS
        - icrement counter by 1
    - append current_counter to number_of_letters
- RETURN number_of_letters

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end


ALPHABETS = ('a'..'z').to_a

def solve(words)
  words = words.map{|word| word.downcase}

  words.map do |word|
    counter = 0
    word.chars.each_with_index do |current_char, current_idx|
      if ALPHABETS.index(current_char) == current_idx
        counter += 1
      end
    end
    counter
  end
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]