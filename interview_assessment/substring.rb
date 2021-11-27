=begin
Get all the substrings of the string containing only letters and no spaces.


"Hello"

"H", "e", "l", "l", "o", --> size = 1,
"He", "el", "ll", "lo", --> size = 2,
"Hel", "ell", "llo",  --> size = 3,
"Hell", "ello" --> size = 4,
"Hello" --> size = 5

starting_index = 0, length = 1..str.length
starting_index = 1, length = 1..str.length - starting_index
starting_index = 2, length = 1..str.length - starting_index
starting_index = 3, length = 1..str.length - starting_index
starting_index = 4, length = 1..str.length - starting_index

starting_index = 0..str.size - 1
substring_size = 1..str.size - starting_size

=end

def find_substrings(str)
  substrings = []

  0.upto(str.size - 1) do |start_index|
    1.upto(str.size - start_index) do |substr_size|
      substrings << str[start_index, substr_size]
    end
  end

  substrings
end

str = "Hello"

p find_substrings(str)