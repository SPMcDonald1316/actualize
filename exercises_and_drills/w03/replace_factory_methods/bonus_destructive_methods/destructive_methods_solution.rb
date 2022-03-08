# Commit 1 - Psuedocode

# input: 
# output: 

# Steps
# 1 - 
# 2 -
# 3 - 

# Commit 2 - Non-Destructive Solution

def acrostic_decoder(coded_message)
  # write code here  
end

# Commit 3 - Destructive Solution

def acrostic_decoder!(coded_message)
  # write code here  
end

# Runner Code

puts "Non-Destructive method"
puts

message = "Does one, yodel on under resentment, when offsprings refuse kamp?"
decoded_message = acrostic_decoder(message)

puts "Message 1: #{message}"
puts "Decoded Message 1: #{decoded_message}"
puts

puts "============================================================="
puts

puts "Destructive method"
puts

message_2 = "Does one, yodel on under resentment, when offsprings refuse kamp?"
puts "message_2's object id: #{message_2.object_id}"

decoded_message_2 = acrostic_decoder!(message_2)
puts "decoded_message's object id: #{decoded_message.object_id}"
puts

puts "Message 2: #{message_2}"
puts "Decoded Message 2: #{decoded_message_2}"
puts

puts "Was your method destructive?"
p decoded_message_2.object_id == message_2.object_id