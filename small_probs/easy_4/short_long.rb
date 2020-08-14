HEXA = {
  "0" => 0,
  "1" => 1,
  "2" => 2,
  "3" => 3,
  "4" => 4,
  "5" => 5,
  "6" => 6,
  "7" => 7,
  "8" => 8,
  "9" => 9,
  "A" => 10,
  "B" => 11,
  "C" => 12,
  "D" => 13,
  "E" => 14,
  "F" => 15
}

def hexadecimal_to_integer(hexa_string) 
  result_number = 0
  count_place = 1
  count_index = 0
  
  result_array = hexa_string.upcase.chars.map{ |char| HEXA[char] } 

  result_array.reverse.each do |number|
    result_number = result_number + number * count_place
    count_place *= 16
  end
  result_number
end

p hexadecimal_to_integer('4D9f') == 19871