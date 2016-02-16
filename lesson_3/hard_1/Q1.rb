# Q1 What will happen when variable is referenced in the last line of code?

if false
  greeting = "hello world"
end

greeting 

# Since variable was initialized within the block the local varialbe will initialize to nil.
# If the variable was never initialized Ruby would have raised an "undefined method or local variable" error.