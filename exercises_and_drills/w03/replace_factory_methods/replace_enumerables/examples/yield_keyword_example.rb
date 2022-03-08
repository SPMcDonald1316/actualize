puts "passing in data with parameters and arguments"
puts
# could be named anything, this is a method that takes in one parameter of infomation
def picture_frame(thing_1) 
  puts thing_1  
end

# arguments passed into parameters are how you give data to a method
# each time you call the method you can change what it does based on the argument you give
picture_frame(5)
picture_frame("sunset")

# if I passing some logic such as this below, the strings concatenate before they are passed in as a static piece of data, namely a string.
picture_frame( "cat" + " " + "in" + " " + "the" + " " + "hat")


puts "=============================================="
puts "using yield to pass in running logic"
puts
# Let's take a look at the way the yield keyword works

def summer
  yield # this represents a block of code.
end

# You've seen blocks before they follow the method using curly brakets for a single line block
# or the `do` and `end` keywords for a muliline block
# instead of passing infomation into the parentheses, you can add a block that takes runnable logic into the method. we'll start with some static examples

# examples

summer { puts "it's so sunny" }
# or
summer do 
  puts "why is it raining?"
end

puts "=============================================="
puts "passing data into the block"
puts
# I know you're saying "that's great but when does this get useful?". that's this next part.
# Let's say I want to pass in data into the block

def give_me_five
  yield(5, "bob", :third_thing) # this line defines the value of the block variable
end

give_me_five { |slap| p slap}
give_me_five { |slap, crackle| p crackle}
give_me_five { |slap, crackle, plop| p plop}

# we passed an argument into the yield block, when we call the #give_me_five method, we can assign as many block variables as we have arguments passed into the block on line 45.

puts 
puts "passing dynamic data to yield" 
puts

# we can also make that yield argument dynamic, see example below.

def do_math(number)
  yield(number)
end

do_math(5) { |passed_data| puts passed_data * 3}
do_math(26) { |passed_data| puts passed_data / 2}
do_math(3) { |passed_data| puts passed_data + 6}

puts
puts "passing yield multiple times"
puts

# We can also run the yield multiple times

def do_it_twice(array)
  yield(array[0])
  yield(array[1])
end

do_it_twice(["hi", "mom"]) do |word|
  puts word * 2
end