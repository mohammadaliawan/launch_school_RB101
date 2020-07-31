flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# barney_hsh = flintstones.select{|key, value| key == "Barney"}

# p barney_hsh

# p barney_hsh.to_a.flatten

# p flintstones.assoc("Barney")

hsh = {
  ali: "0320 8457 469",
  amna: "0323 4237187",
  ammi: "0323 8834 743"
}

p hsh.assoc(:amna)

p hsh