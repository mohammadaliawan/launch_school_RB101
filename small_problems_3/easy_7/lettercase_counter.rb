=begin

Write a method that takes a string, and then returns a hash that contains 3 entries:
one represents the number of characters in the string that are lowercase letters,
 one the number of characters that are uppercase letters, and one the number of characters that are neither.

Examples

Copy Code
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

------ PED:- 0 MIN to 12 MIN --------------


**Input** : string
**Output** : a hash containing counts for  { lowercase: , uppercase: , neither:  }

**Explicit Requirements/Rules/Boundaries**
- write a method
- takes a stirng as argument
- returns a hash contaning three entries
- { lowercase: , uppercase: , neither:  }
-

**Implicit Requirements/Rules/Boundaries**
- input: "" -> { lowercase: 0, uppercase: 0, neither: 0 }
- all nonalpha chars will count as neither including space


**Special Terms**
-


**Examples/Test Cases**
- input: 'abCdef 123'
- Output: { lowercase: 5, uppercase: 1, neither: 4 }




**Questions**
-


**Data Structures**
- input: string
- Output: hash
- Intermediate:
- Storage:

--------------- A:- 12 MIN to 20 MIN------------

**Algorithm**
- Given a string containing uppercase, lowercase and neither chars
- init a hash #lettercase {} lowercase: 0, uppercase: 0, neither: 0 }}
- find the number of chars in the string # str_size
- find the number of lowercase chars "a-z" #lower_case
- find the number of uppercase chars "A-Z" # upper_case
- neither  = str_size - lower_case - upper_case
- assign the values to lowercase: 0, uppercase: 0, neither: 0 in the hash


**Implementation details**
-


-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

def letter_case_count(str)
  letter_case = {lowercase: 0, uppercase: 0, neither: 0}

  letter_case[:lowercase] = str.count("a-z")
  letter_case[:uppercase] = str.count("A-Z")
  letter_case[:neither] = str.size - letter_case[:lowercase] - letter_case[:uppercase]

  letter_case
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
