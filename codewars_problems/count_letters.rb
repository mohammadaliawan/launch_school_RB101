=begin
In this kata, you've to count lowercase letters in a given string and return 
the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby

Example:

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})



First I am going to read through the problem a few times and understand the test cases provided. Then I am going
deconstruct the problem into its requirements and define the rules and boundaries of the problem.

------ PED:- 0 MIN to 12 MIN --------------


**Input** :string
**Output** : hash with letter counts

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a string as argu
- returns a hash of all letter counts
  - {:letter => count of that letter in the string}
- 


**Implicit Requirements/Rules/Boundaries**
- letters should be in alphabetical order in the hash


**Special Terms**
-

Now I am going to go through the test cases in more detail and map out the high level sequence of manual steps
involved in going from the input to the output

**Examples/Test Cases**

letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

'arithmetics' {}
 delet the duplicates in string and and sort chars in ascending order, make a new string
 "arithmecs" 
 "a" -> count "a" in string -> store in the hash
 "r" -> count 'r' -> store


**Questions**
-


**Data Structures**
- input: string
- Output: hash
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string
- init an empty hash
- make a new string from given string by deleting duplicates and sorting alphabatically
- For each char in new string
  - count the current char in given string
  - store in the hash
- return the hash


**Implementation details**\
- INIT counts to {}
- convert the string to an array #chars
- delete duplicates from chars and sort alphabatically
- iterate through chars array
  - find the count of current char in given string
  - save the count in the hash as :current_char => current_count


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def letter_count(word)
  counts = {}

  chars = word.chars

  chars = chars.uniq.sort

  chars.each do |char|
    current_count = word.count(char)
    counts[char.to_sym] = current_count
  end
  
  counts
end



p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}