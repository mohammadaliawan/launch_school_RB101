def find_fibonacci_index_by_length(number_of_digits)
  return 1 if number_of_digits < 2
  
  first = 1
  second = 1
  
  index = 2
  loop do 
    index += 1
    current_fibonacci_num =  first + second
    
    break if current_fibonacci_num.to_s.size >= number_of_digits
    first = second
    second = current_fibonacci_num
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847