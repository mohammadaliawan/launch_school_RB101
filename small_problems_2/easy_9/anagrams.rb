=begin

Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in a different order.
 Your output should look something like this:


["demo", "dome", "mode"]
["neon", "none"]
#(etc)

First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings
**Output** : arrays of strings that are anagrams on seperate lines

**Explicit Requirements/Rules/Boundaries**
- write a program
- prints out group of words that are anagrams
- groups of anagrams should be placed in one array
- each group of anagrams should be printed on seperate lines
- Anagrams are words that have the same exact letters in them but in a different order.

- write a method
- takes an array of strings as input
- prints the groups of anagrams



**Implicit Requirements/Rules/Boundaries**
- the strings should be in alphabetical order


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**
- input: ['demo', 'none', 'tied', 'evil', 'dome', 'mode']
- Output: ['demo', 'mode', 'dome']

- make a hash {key => value} {"demo" => ["demo", "dome", "mode"], "enno" => ["none"], "deit" => ["tied"], "eilv" => ["evil"],  }
"demo" -> "demo"
"none" -> "enno"
"tied" -> "deit"


**Questions**
-


**Data Structures**
- input: array of strings
- Output: arrays of strings
- Intermediate:
- Storage: {}

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given an array of strings
- make an empty hash anagrams
- For each string in the array
  - sort the alphabets in the string # key
  - if a key already exists in the anagrams hash equal to key
    - append it to the value array
  - otherwise,
    - store the key as a key in the hash with a value of [current_string]
- Find all the values in the anagrams hash
- Print all values on seperate lines


**Implementation details**
- sort: chars.sort.join("")


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def print_anagrams(words)
  anagrams = Hash.new{|hash, key| hash[key] = []}

  words.each do |word|
   key = word.chars.sort.join('')
   anagrams[key] << word
  end

  anagrams.each{|key, list| list.sort!}

  anagrams.values.each{|list| p list}
end

print_anagrams(['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon'])