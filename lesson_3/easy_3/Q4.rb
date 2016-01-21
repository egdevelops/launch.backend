# Q4 Shorten sentence

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.slice(0, advice.index('house')) 

# => "Few things in life are as important as "

# with bang "slice! it returns mutated slice:
# "house training your pet dinosaur."