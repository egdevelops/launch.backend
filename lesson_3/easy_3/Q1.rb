# Q1 Simpler way to write Array 

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# %w (w for: white-space seperated array)
# is shortcut to write array without commas and quotations
# open and closers can be anything: [], !!, ()

# Other % literals:

# %r() is another way to write a regular expression.
# %q() is another way to write a single-quoted string (and can be multi-line, which is useful)
# %Q() gives a double-quoted string
# %x() is a shell command
# %i() gives an array of symbols (Ruby >= 2.0.0)
# %s() turns foo into a symbol (:foo)