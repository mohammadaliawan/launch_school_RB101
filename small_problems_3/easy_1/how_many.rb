

=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'.
Once counted, print each element alongside the number of occurrences.

Expected output:

car => 4
truck => 3
SUV => 1
motorcycle => 2


------ PED:- 0 MIN to 12 MIN --------------


**Input** : array of strings
**Output** : print each element with its occurances car => 4

**Explicit Requirements/Rules/Boundaries**
- print each element of the array with its occurances
- words in the array are case sensitive 'suv' != 'SUV'
- print each word on seperate lines
- word => occurances


**Implicit Requirements/Rules/Boundaries**
- no quotation marks on the word or occurances
- print car => 4 as a string


**Special Terms**
- each string is a word


**Examples/Test Cases**
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

car => 4
truck => 3
SUV => 1
motorcycle => 2

**Questions**
-


**Data Structures**
- input: array of strings
- Output: 
- Intermediate: 
- Storage: hash to store counts

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given an array of strings
- make a new array by deleting duplicates from given array
- init an empty hash #counts
- For each word in the new array
  - count the occurances of current string
  - save it to a hash as word => count
- For each key-value pair in the hash
  - print the string "word => count" #interpolate


**Implementation details**\
- define a method count_occurrences(vehicles) takes an argument of array of strings
- INIT a new array by deleting duplicates from the array # uniq_vehicles
- INIT  occurances to {}
- iterate through the uniq_vehicles array
  - init current_count to count of current string in vehicles array #count
  - assign the current_word to value current_count in the hash occurances
- iterate through the occurances hash 
  - print the string "#{word} => #{value}"


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def count_occurrences(vehicles)
  keys = vehicles.uniq

  occurrences = {}

  keys.each do |word|
    current_count = vehicles.count(word)
    occurrences[word] = current_count
  end

  occurrences.each do |word, count|
    puts "#{word} => #{count}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)