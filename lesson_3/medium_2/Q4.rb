# Q4 Split string and join in reverse:

sentence = "Humpty Dumpty sat on a wall."

puts sentence.split(" ").reverse.join(" ")


=begin 

 Solution:

 words = sentence.split(/\W/)
 words.reverse!
 backwards_sentence = words.join(' ') + '.'
 puts backwards_sentence

=end
