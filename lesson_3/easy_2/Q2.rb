# Q2 Add up ages from hash

ages = { "Herman" => 32, 
          "Lily" => 30, 
          "Grandpa" => 5843, 
          "Eddie" => 10, 
          "Marilyn" => 22,
          "Spot" => 237
        }

ages.values.inject(:+) # applies + operator to accumulator and 
                       # object parameters of inject (values)

# need to study Enumerables


# => 6174