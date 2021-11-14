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

=begin

** Problem Requirements **

Input: array of strings
Output: element => number of occ

**Rules / Boundaries (Check test cases)**

**Explicit**
- define a method
- takes an array of strings as an argument
- counts the num of occ of each string in the array
- words are case sensitive
- print the number of occ of each element motorcycle => 2

**Implicit**
- the output should be on seperate lines
- output the string "word => occ"
- no spaces in the strings

** Terms **
- words --> a single string is a word

**Questions**
- array will contain strings only? yes

** Data Structures**

- input: array of strings
- Output: "word => occ"
- Intermediate:
- Storage: Hash


**Algorithm**
- two strings are equal if they are the same length and the have the same characters in the
- given an array of strings
- delete duplicates of the strings in the array
- create a hash for storing the word => num of occ
- For each word in the array of strings
  - count the number of times it appears in the array
  - store the string and the num of occ in the hash
- output each key value pair as "key => value"


** Implementation details **

=end

def count_occurrences(vehicles)
  occ = {}

  vehicles = vehicles.map(&:downcase)

  vehicles.uniq.each do |vehicle|
    occ[vehicle] = vehicles.count(vehicle)
  end

  occ.each do |key, value|
    puts "#{key} => #{value}"
  end
end



vehicles = [
  'CAR', 'cAr', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'MOtorcycle', 'car', 'TrucK'
]

count_occurrences(vehicles)