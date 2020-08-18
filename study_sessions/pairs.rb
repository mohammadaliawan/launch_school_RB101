def pairs(arr)
  number_count = Hash.new(0)
  return 0 if arr.empty? || arr.size == 1
  
  arr.each do |number|
    number_count[number] += 1
  end
  
  pairs_array = number_count.map do |_, value|
    value if value < 2
    if value.even?
      value / 2
    else
      (value - 1) / 2
    end
  end
  
  pairs_array.delete_if do |element|
    element == nil 
  end
  
  pairs_array
end