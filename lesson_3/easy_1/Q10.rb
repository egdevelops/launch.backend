# Q10 Turn Array into Hash i.e. "name":index_position

flintstones = ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]

flintstones_hash = {} # initialize empty hash

flintstones.each_with_index do |name, index| # fill hash with .each_with_index with name, index as arguments
  flintstones_hash[name] = index # index is assigned to name
end

p flintstones_hash

# => {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}

# flintstones.to_h in newer Ruby version