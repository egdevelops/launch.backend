# Q8 Un-nest Array 

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# => ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

p flintstones.flatten!

# => ["Fred", "Wilma", "Barney", "Betty", "BamBam", "Pebbles"]