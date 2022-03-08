# While loop vs Each loop
#===================================================
# fruits = ['apple', 'banana', 'pear', 'strawberry', 'apple']

# while loop
# i = 0

# while i < fruits.length
#   p fruits[i]
#   i += 1
# end

# each loop
# fruits.each do |fruit|
#   p fruit
# end

#===================================================
# Sum
#===================================================
# Given the array numbers = [5, 2, 6, 1], find the sum of all the numbers in that array. Use a while loop and an each loop

# numbers = [5, 2, 6, 1]
# sum = 0

# while loop
# i = 0
# while i < numbers.length
#   sum += numbers[i]
#   i += 1
# end

# puts "Total sum: #{sum}"
# puts "Average: #{sum / numbers.length}"

# each loop
# numbers.each do |num|
#   sum += num
# end

# puts "Total sum: #{sum}"
# puts "Average: #{sum / numbers.length}"