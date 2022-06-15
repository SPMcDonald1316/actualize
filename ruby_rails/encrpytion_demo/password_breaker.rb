require 'benchmark'

puts "Enter an encrypted password:"
encrypted_password = gets.chomp.to_i

def encrypt_password(password)
  encrypted_password = 1
  letters = password.split("")
  letters.each do |letter|
    encrypted_password *= letter.ord
  end
  return encrypted_password
end

def break_password(encrypted_password)
  count = 0
  ("aaaaa".."zzzzz").each do |word|
    count += 1
    puts word
    if encrypt_password(word) == encrypted_password
      puts "PASSWORD BROKEN. YOUR PASSWORD IS #{word}"
      puts "Attempts taken: #{count}"
      break
    end
  end
end

puts Benchmark.measure { break_password(encrypted_password) }
