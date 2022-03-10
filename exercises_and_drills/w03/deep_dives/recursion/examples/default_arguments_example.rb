def soft_cheese(type, age=8)
   "#{type}, aged #{age} months"
end

parmesan = soft_cheese("paramesan") # only passing in the first argument, uses the default for the second argument
blue_cheese = soft_cheese("blue", 3) # passing a second argument, overrides the default value

puts parmesan
puts blue_cheese