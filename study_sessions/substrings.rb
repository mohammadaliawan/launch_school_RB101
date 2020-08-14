def substrings(string)

array = []  
  
0.upto(string.length - 1) do |index|
  1.upto(string.length - index) do |length|
    array << string[index, length]
  end
  
end

array

end
  
  
  
  
  
p substrings('abcde')