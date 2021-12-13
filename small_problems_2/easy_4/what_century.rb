=begin
Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise
the 20th century.

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

**Problem Requirements**

**Rules / Requirement/ Boundaries (Check test cases)**

**Explicit**
- def a method
- takes an year as argu
- return the century of that year
- return a string that start with century number
- ends with st, nd, rd, or th as appropriate
- new centuries begin with years ending with 01


**Implicit**
-

**Special Terms**
- st, nd, rt or th as apprpriate
  - 1 => st, 2 => nd, 3 => rd, 4 => th, ... 9 => th
  - exceptions : 11, 12, 13 => th

**Questions**
-

- Input: number greater than 0
- return: century number in string format

**Data Structures**
- input: integer
- Output: string
- Intermediate:
- Storage: hash for storing suffixes

**Algorithm**
- given the year number as a positive integer
- find the century number
- find the sufix
- concat the century number with the suffix
- return the result

**Implementation details**
- subprocess: century number:
  - if remainder of division by 100 > 0
    century_number = year/100 + 1
    else
      century _number = year/ 100

- subprocess: find the sufix
  - suffixes = { 1 => "st", 2 => "nd", 3 => "rd"}

  - find the last and second last numbers
  - if last number is <= 3
    - if second last number is 1
      sfx = "th"
      else
        suffixes[last_number]
      end
      else
        suffix = "th"

=end


def find_century(year)
  if year % 100 > 0
    (year/100) + 1
  else
    year/100
  end
end

def find_suffix(century_num)
  suffixes = { 1 => "st", 2 => "nd", 3 => "rd"}

  last_two_digits = century_num.digits.reverse.last(2).join
  last_digit = century_num.digits.reverse.last

  if %w(11 12 13).include?(last_two_digits) || [4, 5, 6, 7, 8, 9, 0].include?(last_digit)
    "th"
  else
    suffixes[last_digit]
  end
end

def century(year)
  century_number = find_century(year)

  sufx = find_suffix(century_number)

  century_number.to_s + sufx
end

p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'