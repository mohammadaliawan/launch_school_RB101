# Question 1
  # Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn't one, return 0 instead.
  
  
  # p minSubLength([2,3,1,2,4,3], 7) == 2
  # p minSubLength([1, 10, 5, 2, 7], 9) == 1
  # p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
  # p minSubLength([1, 2, 4], 8) == 0

# Question 2
  # Find the length of the longest substring in the given string that contains exatly 2 characters "a" and 2 characters "e" in it.
  
  # As an example, if the input was “aaee”, the substring (aaee) length would be 4.
  # For a string "babanctekeaa", the longest substring is "babancteke" and its length is 10.
  
  # If the length of the input string is 0, return value must be -1 and if none of the substrings contain 2 "a" and "e" characters return -1 as well.
  
#   p longest_ae("aaee") == 4
#   p longest_ae("babanctekeaa") == 10
#   p longest_ae("xenoglossophobia") == -1
#   p longest_ae("pteromerhanophobia") == 18
#   p longest_ae("johannisberger") == -1
# p longest_ae("secaundogenituareabb") == 16