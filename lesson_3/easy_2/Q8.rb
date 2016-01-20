# Q8 Find index starting with "Be"

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flinstones.index { |name| name[0, 2] == "Be" }

# => 3