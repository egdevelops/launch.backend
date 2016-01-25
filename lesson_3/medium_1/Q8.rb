# Q8 Write version of Titelize for core Ruby:

def titleize(title)
  title.split(" ").map { |word| word.capitalize }.join(" ")
end
puts titleize "how to titleize in ruby"
# => How To Titelize In Ruby


# Solution:

#def titleize(words)
#  words.split.map { |word| word.capitalize }.join(' ')
#end

#puts titleize "how to titleize in ruby"

