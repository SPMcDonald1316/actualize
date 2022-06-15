require 'bcrypt'
require 'benchmark'

puts "Enter a password:"

puts "Your encrpyted password is: #{BCrypt::Password.create(gets.chomp)}"