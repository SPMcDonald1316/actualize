

puts "This is what the data looks like with a `puts` statement"
puts "Example 1: "
puts ["1", "2", "3", "4", "5"]

puts ""

puts "Example 2: "
[1, 2, 3, 4, 5].each do |number|
  puts number
end

puts ""

puts "Can you tell the difference between the two examples above from the terminal?"
puts ""

puts "This is what the data looks like with a `p` statement"
p ["1", "2", "3", "4", "5"]

puts ""

puts "Which one above tells you that this is an array of strings? p or puts?"