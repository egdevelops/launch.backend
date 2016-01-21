# Q3 Add multiple items to Array: "Dino" and "Hoppy"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#p flintstones.push("Dino").push("Hoppy")
# returns array allowing me to chain

p flintstones.concat(%w(Dino Hoppy))
# contact adds an Array instead of just one item

