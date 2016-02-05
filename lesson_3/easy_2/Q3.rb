# Q3 Remove ages >= 100

ages = { "Herman" => 32, 
          "Lily" => 30, 
          "Grandpa" => 5843, 
          "Eddie" => 10, 
          "Marilyn" => 22,
          "Spot" => 237
        }

p ages.keep_if { |_, age| age < 30 }


# => {"Eddie"=>10, "Marilyn"=>22}


