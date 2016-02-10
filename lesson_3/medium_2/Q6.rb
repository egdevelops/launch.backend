# Q6 Did method call destruct original hash?

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male"},
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

puts mess_with_demographics(munsters)

=begin
Yes: 
* It added 42 to all ages (+= 42) 
* and changed all genders to 'other' ( ["gender"] = "other")

{"age"=>74, "gender"=>"other"} 
{"age"=>72, "gender"=>"other"} 
{"age"=>444, "gender"=>"other"} 
{"age"=>52, "gender"=>"other"}
{"age"=>65, "gender"=>"other"}

=end