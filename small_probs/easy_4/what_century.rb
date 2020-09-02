=begin
Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.


Problem: Given a year as an integer
Return the century with the suffix as a string
Rules: Explicit: Return value should be a string that begins with the century number and ends with st, nd, rd, or th

New centuries begin in years that end in 01
Implicit: 

Examples:

0-100 1st
101-200 2nd
201-300 3rd
301-400 4th
401-500 5th
501-600 6th
601-700 7th
701-800 8th
801-900 9th
901-1000 10th  
1001-1100 11th
1101-1200 12th
1201-1300 13th
1301-1400 14th 14 % 10 = 4th
1401-1500 15th 15 % 10 = 5th
1501-1600 16th
1601-1700 17th
1701-1800 18th
1801-1900 19th
1901-2000 20th 20 % 10 = 0th
2001-2100 21st

          223rd 223 % 10 = 3rd




11211 / 100 + 1 =  112 + 1 = 11112 % 100 = 12

Data Structure: Input: integer
output: string

Algorithm:

Given a year

1. Find the century number
  - if year % 100 != 0
       century number = (year / 100) + 1 
    elsif if year % 100 == 0
      century number = (year / 100)
2. Find the suffix"
  - create a hash for suffix(suffix_hsh) { 1 => 'st', 2 => 'nd', 3 => 'rd'}
  - create a local variable last_digit = century_number.digits[0]
  - last_two_digits = century_number.digits[0..2].join.to_i
  
    if [11,12,13].include?(last_two_digits) 
      suffix = 'th'
    elsif [4,5,6,7,8,9,0].include?(last_digit) # if this is false, last_digit is either of [1,2,3]
      suffix = 'th'
    else
      suffix = suffix_hash[last_digit]
    end

3. Concatenate the century_number + suffix

=end


def find_century_number(year)
  if year % 100 != 0
    century_number = ( year / 100 ) + 1 # 1127 / 100 + 1 = 12
  elsif year % 100 == 0
    century_number = ( year / 100 )
  end
end

def find_suffix(century_number)
  suffix_hash = { 1 => 'st', 2 => 'nd', 3 => 'rd'}
  last_digit = century_number.digits[0] # century_number % 10
  last_two_digits = century_number.digits.reverse[0..1].join.to_i # century_number % 100

  if [11,12,13].include?(last_two_digits) 
    'th'
  elsif [4,5,6,7,8,9,0].include?(last_digit) 
    'th'
  else
    suffix_hash[last_digit]
  end

end

def century(year)
  century_number = find_century_number(year)

  suffix = find_suffix(century_number)

  century_number.to_s + suffix
end


p century(2000) == '20th'
p century(2001)  == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'

p century(1234567811) == "12345679th"
