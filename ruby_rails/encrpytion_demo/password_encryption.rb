puts "Please enter a password:"
password = gets.chomp

def encrypt_password(password)
  encrypted_password = 1
  letters = password.split("")
  letters.each do |letter|
    encrypted_password  *= letter.ord
  end
  return encrypted_password
end

encrypted_password = encrypt_password(password)
puts "YOUR PASSWORD IS NOW ENCRPYTED AS: #{encrypted_password}"