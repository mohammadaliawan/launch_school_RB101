
=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

Notes:

the returned string should only contain lowercase letters

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string in CamelCase
**Output** : string in kebabcase

**Explicit Requirements/Rules/Boundaries**
- convert a camel case string into a kebab case
- camelcase: myCamelCasedString
- kebabcase: my-camel-cased-string
  - each word is lowercased
  - no nonalphabetic chars 
  - only lowercased letters
  - words to be seperated by `-`
  - new word starts where capital case letter comes


**Implicit Requirements/Rules/Boundaries**
- return a new string


**Special Terms**
-


**Examples/Test Cases**
kebabize('myCamelCasedString') == 'my-camel-cased-string'

"my-camel-cased-string"
'myCamelCasedString'-> 

kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

"my-camel-has-humps"
'myCamelHas3Humps'


**Questions**
-


**Data Structures**
- input: string
- Output:string
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a string in camelCase
- make an empty string #kebab
- for each char in the given string
  - if the current char is lowercased alphabetic char /[a-z]/
    - append to kebab string # <<
  - if the current char is uppercase alphabetic char /[A-Z]/
    - append a - followed by the lowercase version of the current_char to kebab string "-#{current_char}"
  - if the current char is non alphabetic 
    - do nothing
- return kebab string

**Implementation details**\
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end


# def split_string(string)
#   array = []
#   temp = ""
#   string.each_char do |char|
#     unless /[A-Z]/.match(char)
#       temp << char
#     else
#       array << temp
#       temp = char
#     end
#   end
#   array
# end

# p split_string("camelCaseDone")

# def kebabize(camel_case)
#   kebab_case = ""

#   camel_case.chars.each_with_index do |char, idx|
#     if /[a-z]/.match(char)
#       kebab_case << char
#     elsif /[A-Z]/.match(char) && (kebab_case.size - 1) < 0
#       kebab_case << "-#{char.downcase}"
#     end
#   end
#   kebab_case
# end


# p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
# p kebabize("Final") #== "final"
# p kebabize("3By905") == "by"