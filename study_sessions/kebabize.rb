# https://www.codewars.com/kata/57f8ff867a28db569e000c4a

=begin

Modify the kebabize function so that it converts a camel case string into a kebab case.


Notes:

the returned string should only contain lowercase letters

input: string in camelCase
ouput: a string in kebab case

Rules:
- Convert Camel case to kebab case
kebabcase:
- returned string: words seperated by hyphens
- No non-alpha chars in the output string
- all chars in the output string should be lowercased

DS: 

input: String
Ouput: string

Intermediate: array

Algo:
Given a string of words in camelCase without any spaces
- Clean the string(delete the non-alpha chars)
    #delete("^a-zA-Z")
- Insert hyphens before every Captal letter
  - Convert the string into an array of chars
    iterate through the array of chars
      - whenever we come across a capital letter
        - insert a ('-')
  - join the array of chars with an empty string
- lowercase the whole string



=end



def kebabize(camel_case_str)
  camel_case_str[0] = camel_case_str[0].downcase
  
  clean_string = camel_case_str.delete("^a-zA-Z")
  
  array_of_chars = clean_string.chars
  counter = 0
  array_of_chars.each_with_index do |char, index|
    if ("A".."Z").include?(char)
     clean_string = clean_string.insert(index + counter, "-")
      counter += 1
    end
  end
  clean_string.downcase
end


# Raul
def kebabize(str)
  str = str.tr("0-9", "")
  str[0] = str[0].downcase
  
  separated_words = ''
  
  str.each_char do |letter|
    separated_words << "-" if letter.upcase == letter
    separated_words << letter.downcase
  end
  
  separated_words
end


def kebabize(camel_case_str)
  camel_case_str[0] = camel_case_str[0].downcase
  
  clean_string = camel_case_str.delete("^a-zA-Z")
  
  array_of_chars = clean_string.chars
  counter = 0
  array_of_chars.each_with_index do |char, index|
    if ("A".."Z").include?(char)
     clean_string = clean_string.insert(index + counter, "-")
      counter += 1
    end
  end
  clean_string.downcase
end

p kebabize('camelsHaveThreeHumps') # == "camels-have-three-humps"
p kebabize('camelsHave3Humps')# == "camels-have-humps"