# Q5 Ruby automatically evaluates statements so programs can be more concise:

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

# Can be simplified with:

# def color_valid(color)
#   color == "blue" || color "green"
# end
