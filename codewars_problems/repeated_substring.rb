=begin

For a given nonempty string s find a minimum substring t and the maximum number k, 
such that the entire string s is equal to t repeated k times. 
The input string consists of lowercase latin letters. 
Your function should return an array (in Ruby and JavaScript) [t, k]

Example #1:
for string
s = "ababab"
the answer is
["ab", 3]

Example #2:
for string
s = "abcde"
the answer is
("abcde", 1)
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

------ PED:- 0 MIN to 12 MIN --------------


**Input** :string - non empty (s)
**Output** : [minimum substring(t), repetitions(k)]

**Explicit Requirements/Rules/Boundaries**
- given a nonempty string s
- find the minimum(by length) substring t that if repeated a maximum k times is equal to the given string s
- The input string consists of lowercase latin letters
- return an array [t , k]


**Implicit Requirements/Rules/Boundaries**
- find the shortest substring in length
- find the maximum number such that substring*number == given string
- the whole string is a valid substring,
- min value of k is 1


**Special Terms**
- substring: any consecutive sequence of chars in the string



**Examples/Test Cases**
f("ababab") == ["ab", 3]

"a", "ab", "aba", "abab", "ababa", "ababab"
"a"*lenth of the string/ length of substring
"b", "ba", "bab",...
"a", "ab", "aba", "abab"
...
"a", "ab"



**Questions**
-


**Data Structures**

- input: string
- Output: array [substring, number]
- Intermediate:
- Storage: []

--------------- A:- 12 MIN to 20 MIN------------

**High Level Algorithm**
- Given a non empty string
- Generate substrings starting with the first char upto the middle char
    for each substring check if the current substring length is a factor of string length
      - if it is check if substring * stringlength/substring length is equal to given string
      - return current substring and multiplier


**Implementation details**\
- Iterate over the end index from 0 to last_index
  - INIT current_substring to string[0, end_index]
  - IF current string is factor_of?(string.size, substring.size)
      multiplier = given string length / substring length
      IF currentstring * multiplier == given string
        return [current_substring, multiplier]
      END
    END
  END

-------------- C: 20 MIN to 25 MIN ------------------------

**CodeWithIntent****
=end

# "Hello World"
# 'Hello World'


# def factor_of?(string_size, substring_size)
#   string_size % substring_size == 0
# end

# def f(string)
#   0.upto(string.size - 1) do |end_index|
#     current_substring = string[0..end_index]
#     if factor_of?(string.size, current_substring.size)
#       multiplier = (string.size)/(current_substring.size)
#       if (current_substring * multiplier) == string
#         return [current_substring, multiplier]
#       end
#     end
#   end
# end

def f(s)
  uniq_char = s.chars.uniq.join('')
  # split_array = s.scan(uniq_char)
  # [split_array.length > 1 ? uniq_char : s,split_array.length]
end


p f("ababab") #== ["ab", 3]
p f("abcde") #== ["abcde", 1]
