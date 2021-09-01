ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages_values = ages.values

current_value = ages_values[0]

ages_values.each do |num|
  if num < current_value
    current_value = num
  end
end

p current_value

p ages.values.min