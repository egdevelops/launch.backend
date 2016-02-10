# Q8 Output of Methods?

def foo(param = "no") # foo is reassigned "yes"
  "yes"
end

def bar(param = "no") # bar calls in foo's argument which is "yes"
  param == "no" ? "yes" : "no" # param takes on foo's "yes"
end                            # Ternary now "yes" == "no" which will be false
                               # therefore printing to the right of colon: "no"
puts bar(foo)

# => no