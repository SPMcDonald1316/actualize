require 'bcrypt'
require 'benchmark'

puts "Enter an encrypted password:"

encrpyted_password = BCrypt::Password.new(gets.chomp)

def break_password(encrpyted_password)
  ("aaaaa".."zzzzz").each do |word|
    puts word
    if encrpyted_password == word
      puts "PASSWORD BROKEN. YOUR PASSWORD IS #{word}"
      break
    end
  end
end

puts Benchmark.measure { break_password(encrpyted_password) }