# Q1 One-liner outputting 10 times with subsequent one-space indent

multiply_indent = "The Flintstones Rock!"

10.times { |number| puts (" " * number) + multiply_indent }

# =>
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
#    The Flintstones Rock!
#     The Flintstones Rock!
#      The Flintstones Rock!
#       The Flintstones Rock!
#        The Flintstones Rock!
#         The Flintstones Rock!
#          The Flintstones Rock!