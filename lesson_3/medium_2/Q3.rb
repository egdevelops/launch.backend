# Q3 

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# A clearer way to structure:

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"  # a_string_param = a_string_param + "rutubaga"
  an_array_param += ["rutabaga"]  # an_array_param = an_array_param + "rutubaga"

  return a_string_param, an_array_param # explicit return allows array to be implicit (no square braces)
end                                     # without return it would have to read [a_string_param, an_array_param]

my_string = "pumpkins"  # assign string to newly created object
my_array = ["pumpkins"] # assign array to newly created object
my_string, my_array = not_so_tricky_method(my_string, my_array) # variables outside of method now available to call
                                                                # this assignment leads back to newly created objects
puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
My string looks like this now: pumpkinsrutabaga
My array looks like this now: ["pumpkins", "rutabaga"]
=end