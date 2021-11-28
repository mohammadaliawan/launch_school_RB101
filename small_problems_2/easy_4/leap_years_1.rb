=begin

In the modern era under the Gregorian Calendar,
leap years occur in every year that is evenly divisible by 4,
 unless the year is also divisible by 100. If the year is evenly divisible by 100,
 then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0.
Write a method that takes any year greater than 0 as input, and
returns true if the year is a leap year, or false if it is not a leap year.


leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- given an year as an integer
- return true if the year is a leap year
- false otherwise

- leap year:
  - year div by 4 and not divisible by 100
  - year div by 4 and divisbible by 100 and divisible by 400


**Implicit**
-

**Special Terms**
-

**Questions**
-

- Input: integer
- Output/return: boolean

**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

**Algorithm**
- if   - year div by 4 and not divisible by 100
        - year div by 4 and divisbible by 100 and divisible by 400
    return true
  else
    return false

**Implementation details**
- year % 4 == 0 && year % 100 != 0 => true

- year % 4 == 0 && year % 100 == 0 && year % 400 == 0 => true

=end

def leap_year?(year)
 ((year % 400) == 0) || (((year % 4) == 0) && ((year % 100) != 0))
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true