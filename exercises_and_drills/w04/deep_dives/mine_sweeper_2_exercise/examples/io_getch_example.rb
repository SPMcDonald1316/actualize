# you must require the io/console library to use this tool
require 'io/console'

puts "type a single character"
# this is similar to gets.chomp but only takes in one character and dosen't require return key press
user_input = STDIN.getch

puts user_input * 10