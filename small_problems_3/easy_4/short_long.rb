=begin

Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string, and
the shorter string once again. You may assume that the strings are of different lengths.

Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes two string as argus
- determines the longest of the two strings
- concat "shortlongshort"
- return the result
- assume strings are of diff length

**Implicit**
- if one of the string is empty, still return the result of concat

**Special Terms**
- longest string: has the greater length
- concatenation: string addition

**Questions**
-

- Input: two strings
- Output/return: one string

**Data Structures**
- input: strings
- Output: string
- Intermediate:
- Storage:

**Algorithm**
- Given two strings of diff lengths
- determine the longer string
- concat the "shortlongshort" into one string
- return the resulting string

**Implementation details**
- subprocess: - determine the longer string
  - if first_str.size > second_str.size
      long = first_str
      short = second_str
    else
      long = second_str
      short = first_str
- subprocess: concat the "shortlongshort" into one string
  - short + long + short

=end


def short_long_short(first_str, second_str)
  if first_str.size > second_str.size
    long_str = first_str
    short_str = second_str
  else
    long_str = second_str
    short_str = first_str
  end

  short_str + long_str + short_str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"