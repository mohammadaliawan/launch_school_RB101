=begin
The British Empire adopted the Gregorian Calendar in 1752, which was a leap year.
Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to determine leap years
both before and after 1752.

Copy Code
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true


**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
-

**Implicit**
-

**Special Terms**
-

**Questions**
-

- Input:
- Output/return:

**Data Structures**
- input:
- Output:
- Intermediate:
- Storage:

**Algorithm**
- if year < 1752
    year % 4 == 0

**Implementation details**
-

=end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    ((year % 400) == 0) || (((year % 4) == 0) && ((year % 100) != 0))
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true