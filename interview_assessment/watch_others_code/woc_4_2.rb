=begin
Write function scramble(str1, str2) that returns true if a postion of str1 characters 
can be rearranged to match str2, otherwrise return false.

For example:

str1 is 'rkqodlw' and str2 is 'world' the output should be true.
str1 is 'codewaraaossoqqyt' and str2 is 'codewars' should return true
str1 is 'katas' and str2 is 'steak' should return false.

only lower case letter will be used (a-z). No punctuation or digits will be included.

=end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('codewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true