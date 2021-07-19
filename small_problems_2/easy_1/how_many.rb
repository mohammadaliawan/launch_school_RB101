=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive:
'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

car => 4
truck => 3
SUV => 1
motorcycle => 2

## PEDAC:

### U:
write a method that has

-Explicit:
  - input: array
  - output: number of occurances of each array element
  - words are case sensitive
- Implicit:
  - The output has to be in the form element => number of occurances on seperate lines
  - The order of the output has to be based on the order in which the words appear in the list

### DS:

- input: array of words(strings)
- output: word => number
- storage: a hash

### Algo: case sensitive

- given an array of strings
- make a list of unique elements in the array
- for each string in
- count the number of times it appears in the array
- store the value

### Algo: case insensitive

- given an array of strings
- create a new array containing the lowercased versions of each element in the original array
- make a list of uniq words in the new array
- for each word in the uniq set
- count the occurance of each word in the new array
- store the occurences

### Implementation details:

- given an array of strings
- initialize an emtpy hash to store the occurances
- optional(case in sensitive version): create a new array with lowercased elements
- create an array of unique elements in the new array
- for each unique element in the array
- count its occurances in the original array
- store the value in the hash as a key value pair

=end

def count_occurrences(list) # Case Insensitive Version
  occurrences = Hash.new

  lowercase_list = list.map {|word| word.downcase}

  unique_words_in_list = lowercase_list.uniq

  unique_words_in_list.each do |word|
    occurrences[word] = lowercase_list.count(word)
  end

  occurrences.each do |word, number|
    puts "#{word} => #{number}"
  end
end

def count_occurrences(list)
  occurrences = Hash.new

  unique_words_in_list = list.uniq

  unique_words_in_list.each do |word|
    occurrences[word] = list.count(word)
  end

  occurrences.each do |word, number|
    puts "#{word} => #{number}"
  end
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'Motorcycle', 'car', 'TRUCK', 'suv'
]

count_occurrences(vehicles)