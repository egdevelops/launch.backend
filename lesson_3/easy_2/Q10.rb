# Q10 Shorten to 3 characters with one-line

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flinstones.map! { |name| name[0,3] }

