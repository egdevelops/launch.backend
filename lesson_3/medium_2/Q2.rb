# Q2 Print the name, age and gender of each member

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 32, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" }
}

munsters.each do |name, details| 
  puts "#{name} is a #{details['age']} year old #{details['gender']}"
end
