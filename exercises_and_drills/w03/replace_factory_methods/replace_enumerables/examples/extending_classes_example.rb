
class Integer # Integer is prewritten somewhere else. I'm adding behavoirs that I think a number should have.
  def tell_setup
    puts "Why was 6 afraid of 7?"
  end

  def tell_punchline
    puts "because 7 ate 9."
  end
end

5.tell_setup
5.tell_punchline

# The Integer still has the functionality that it always had
puts
puts "Is this number odd?"
puts 5.odd?

# Note: be careful when extending classes that you don't overwrite a prexisting method as it may break ruby's core functionality