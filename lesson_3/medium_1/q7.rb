munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member| # array of hashes
    family_member["age"] += 42 # increments the age by 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

=begin

Yes the munsters hash will be modified. because demo_hash
points to the same hash as the munsters hash. Inside the
mess_wtih_demographics method any changes to the demo_hash
will result in munsters hash also being effected.
=end
