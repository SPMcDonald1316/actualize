# Note that each of these variables has a different id, even if the string has the same characters, it's a different string. The object id acts like a fingerprint to uniquely identify an object.

puts "Object Ids"
puts
x = "hello"
y = "goodbye"
puts "x object id"
p x.object_id
puts "y object id"
p y.object_id

z = "hello"
puts "z object id"
p z.object_id

puts "================="
puts "They look the same but..."
puts
# This can also change if you redefine a previous variable.

puts "First lemon"
lemon = "sour"
p lemon.object_id

puts
puts "Second lemon"
lemon = "sour"
p lemon.object_id

# It's the same variable name, it looks like the same string but in fact we are defining a new variable with a different string.

puts "================="
puts "Using the same object"
puts

# What if we use the variable to define a new variables?

car = "toyota"
junk_heap = car

puts "car object id"
p car.object_id

puts
puts "junk heap object id"
p junk_heap.object_id

# Above we are not creating a new string, we are defining two seperate variables with the same string object as it's value.

# Play around with this concept in irb before moving forward.

puts
puts "================="
puts "Destructive Methods"
puts

word = "nice day"
p word.object_id
p word.upcase # this capitalizes the word on this one line but does not change what word actually is.
p word.object_id
p word # note on this line word has not changed

word.upcase! #this line calls the destructive #upcase! which does destroy what word was and overwrites it to a new state.

p word # now word itself is changed
p word.object_id #but it's still the same object


puts "================="
puts "Using dup"
puts 

# You can duplicate an object (like a photocopy), this creates the same value but in a different object

p car.object_id
p car.dup.object_id

puts 
puts "duping arrays produce a new array, we can see the different object id of the array"
puts

# be careful when you are using this on arrays

array = ["bob", "jane", "sam"]
array_duplicated = array.dup

p array.object_id
p array_duplicated.object_id

# it's a different array but lets look inside

puts 
puts "however the array elements are not duplicated"
puts

p array[0].object_id
p array_duplicated[0].object_id

# This means that if you change the values in an array it changes the values in a dup array as well.