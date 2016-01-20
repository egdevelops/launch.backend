# Q9 Shorten names to 3 characters

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flinstones.map! { |name| name[0,3] }

# => ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"]


# Solution was multi-line:

# flinstones.map! do |name|
#   name[0,3]
# end